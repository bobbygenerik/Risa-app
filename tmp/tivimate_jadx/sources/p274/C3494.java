package p274;

import android.net.Uri;
import android.text.TextUtils;
import androidx.media3.common.ParserException;
import j$.util.DesugarTimeZone;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import p266.C3454;
import p364.InterfaceC4437;

/* renamed from: ـᵢ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3494 implements InterfaceC4437 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public static final Pattern f13728 = Pattern.compile("(.+?)(Z|((\\+|-|−)(\\d\\d)(:?(\\d\\d))?))");

    @Override // p364.InterfaceC4437
    /* renamed from: ˈ */
    public final Object mo4043(Uri uri, C3454 c3454) {
        String readLine = new BufferedReader(new InputStreamReader(c3454, StandardCharsets.UTF_8)).readLine();
        try {
            Matcher matcher = f13728.matcher(readLine);
            if (!matcher.matches()) {
                throw ParserException.m740("Couldn't parse timestamp: " + readLine, null);
            }
            String group = matcher.group(1);
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", Locale.US);
            simpleDateFormat.setTimeZone(DesugarTimeZone.getTimeZone("UTC"));
            long time = simpleDateFormat.parse(group).getTime();
            if (!"Z".equals(matcher.group(2))) {
                long j = "+".equals(matcher.group(4)) ? 1L : -1L;
                long parseLong = Long.parseLong(matcher.group(5));
                String group2 = matcher.group(7);
                time -= (((parseLong * 60) + (TextUtils.isEmpty(group2) ? 0L : Long.parseLong(group2))) * 60000) * j;
            }
            return Long.valueOf(time);
        } catch (ParseException e) {
            throw ParserException.m740(null, e);
        }
    }
}
