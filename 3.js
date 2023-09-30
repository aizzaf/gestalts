// 40 menit, javascript

function dateDifference(startDate, endDate) {
  const start = new Date(startDate);
  const end = new Date(endDate);

  const yearDiff = end.getFullYear() - start.getFullYear();
  const monthDiff = end.getMonth() - start.getMonth();
  const dayDiff = end.getDate() - start.getDate();

  let diff_years = yearDiff;
  let diff_months = monthDiff;
  let diff_days = dayDiff;

  if (dayDiff < 0) {
    const lastDayOfMonth = new Date(end.getFullYear(), end.getMonth(), 0).getDate();
    diff_days = lastDayOfMonth - start.getDate() + end.getDate();
    diff_months--;
  }

  if (monthDiff < 0) {
    diff_years--;
    diff_months = 12 - start.getMonth() + end.getMonth();
    if (dayDiff < 0) {
      diff_months--;
    }
  }

  console.log(`- ${diff_years} tahun, ${diff_months} bulan, ${diff_days} hari`);
}

dateDifference('2010-06-26', '2008-03-24');
