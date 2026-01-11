package p349;

import android.graphics.Typeface;
import android.graphics.fonts.Font;
import android.net.Uri;
import android.text.TextUtils;
import j$.util.Objects;
import java.io.IOException;
import p360.C4369;

/* renamed from: ᵎⁱ.ٴﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4289 extends C4286 {
    @Override // p349.C4286
    /* renamed from: ᴵʼ */
    public final Font mo8672(C4369 c4369) {
        Font m8678;
        Uri uri = c4369.f16225;
        boolean equals = Objects.equals(uri.getScheme(), "systemfont");
        String str = c4369.f16223;
        String authority = equals ? uri.getAuthority() : null;
        if (authority != null) {
            Typeface create = Typeface.create(authority, 0);
            Typeface create2 = Typeface.create(Typeface.DEFAULT, 0);
            if (create == null || create.equals(create2)) {
                create = null;
            }
            if (create != null && (m8678 = AbstractC4288.m8678(create)) != null) {
                if (TextUtils.isEmpty(str)) {
                    return m8678;
                }
                try {
                    return new Font.Builder(m8678).setFontVariationSettings(str).build();
                } catch (IOException unused) {
                    return null;
                }
            }
        }
        return null;
    }
}
