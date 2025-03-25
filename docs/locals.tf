locals {
  resource_name_prefix = "${var.environment}-${var.prefix}"

  # Split the input into start and end times
  hours_split = split(" - ", var.business_hours)
  start_time  = element(local.hours_split, 0)
  end_time    = element(local.hours_split, 1)

  # Get current date in YYYY-MM-DD format
  current_date = formatdate("YYYY-MM-DD", timestamp())

  # Combine current date with input times
  start = format("%sT%s:00.000000", 
    local.current_date,
    local.start_time
  )

  end = format("%sT%s:00.000000",
    local.current_date,
    local.end_time
  )
}