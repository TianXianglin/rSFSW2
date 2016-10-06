#include <Rcpp.h>
using namespace Rcpp;

// [[Rcpp::export]]
IntegerVector germination_wait_times(const IntegerVector& time_to_germinate,
    const IntegerVector& duration_fave_cond) {
  int n = time_to_germinate.size();

  // throw input errors
  if (n != duration_fave_cond.size()) {
    throw std::invalid_argument("Arguments must be of identical length");
  }

  // calculate
  int i, j = 0, t1, n_nas;
  int k = sum(!is_na(time_to_germinate));
  IntegerVector out(k);

  for (i = 0; i < n; ++i) {

    // throw error if disagreement in NAs
    if (IntegerVector::is_na(time_to_germinate[i]) != IntegerVector::is_na(duration_fave_cond[i])) {
      throw std::runtime_error("Arguments must have NAs at identical positions");
    }


    if (!IntegerVector::is_na(time_to_germinate[i])) {
      // throw error if germination takes too long
      if (time_to_germinate[i] > duration_fave_cond[i]) {
        throw std::runtime_error("Values of time_to_germinate are larger than of duration_fave_cond");
      }

      n_nas = 0;
      // count NAs between i and i + time_to_germinate[i]
      for (t1 = 0; t1 - n_nas < time_to_germinate[i] && i + t1 < n; ++t1) {
        if (IntegerVector::is_na(duration_fave_cond[i + t1])) ++n_nas;
      }

      out[j++] = n_nas;
    }
  }

  return Rcpp::wrap(out);
}
