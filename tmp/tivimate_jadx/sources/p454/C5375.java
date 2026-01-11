package p454;

import com.google.android.gms.internal.measurement.ˏʻ;
import java.nio.ByteBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.StandardCharsets;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import p055.C1476;
import p112.C1962;
import ˈˋ.ʾˊ;

/* renamed from: ﾞˊ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5375 extends ʾˊ {

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final Pattern f20481 = Pattern.compile("(.+?)='(.*?)';", 32);

    /* renamed from: ʽ, reason: contains not printable characters */
    public final CharsetDecoder f20482 = StandardCharsets.UTF_8.newDecoder();

    /* renamed from: ˈ, reason: contains not printable characters */
    public final CharsetDecoder f20483 = StandardCharsets.ISO_8859_1.newDecoder();

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final C1476 m10771(C1962 c1962, ByteBuffer byteBuffer) {
        String str;
        CharsetDecoder charsetDecoder = this.f20483;
        CharsetDecoder charsetDecoder2 = this.f20482;
        String str2 = null;
        try {
            str = charsetDecoder2.decode(byteBuffer).toString();
        } catch (CharacterCodingException unused) {
            try {
                String charBuffer = charsetDecoder.decode(byteBuffer).toString();
                charsetDecoder.reset();
                byteBuffer.rewind();
                str = charBuffer;
            } catch (CharacterCodingException unused2) {
                charsetDecoder.reset();
                byteBuffer.rewind();
                str = null;
            } catch (Throwable th) {
                charsetDecoder.reset();
                byteBuffer.rewind();
                throw th;
            }
        } finally {
            charsetDecoder2.reset();
            byteBuffer.rewind();
        }
        byte[] bArr = new byte[byteBuffer.limit()];
        byteBuffer.get(bArr);
        if (str == null) {
            return new C1476(new C5373(null, null, bArr));
        }
        Matcher matcher = f20481.matcher(str);
        String str3 = null;
        for (int i = 0; matcher.find(i); i = matcher.end()) {
            String group = matcher.group(1);
            String group2 = matcher.group(2);
            if (group != null) {
                String str4 = ˏʻ.ˈⁱ(group);
                str4.getClass();
                if (str4.equals("streamurl")) {
                    str3 = group2;
                } else if (str4.equals("streamtitle")) {
                    str2 = group2;
                }
            }
        }
        return new C1476(new C5373(str2, str3, bArr));
    }
}
