## $(date +%Y-%m-%d) - Pre-compile Regex for SVG checking
**Learning:** Checking for SVG extensions in URLs using chained string operations (`url.toLowerCase().endsWith('.svg') || url.toLowerCase().contains('.svg?')`) inside hot paths like Flutter `build` methods creates significant garbage collection pressure due to repeated string allocations.
**Action:** Replace chained case-conversion string checks with a static, pre-compiled, case-insensitive RegExp (`RegExp(r'\.svg(\?|$)', caseSensitive: false)`) to eliminate redundant allocations and significantly improve execution time.
