package p178;

import android.content.Context;
import android.graphics.Point;
import androidx.media3.common.ParserException;
import androidx.media3.decoder.DecoderException;
import java.io.IOException;
import java.nio.ByteBuffer;
import p055.C1495;
import p305.AbstractC3712;
import p305.AbstractC3731;
import p421.AbstractC4997;
import p421.AbstractC5001;
import p421.C4996;
import ʽٴ.ˈ;

/* renamed from: ˋˊ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2664 extends AbstractC4997 {

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final int f10116;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final Context f10117;

    public C2664(Context context) {
        super(new C4996[1], new C2665[1]);
        this.f10117 = context;
        this.f10116 = -1;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.media3.decoder.DecoderException, java.lang.Exception] */
    @Override // p421.AbstractC4997
    /* renamed from: ʼˎ */
    public final DecoderException mo745(Throwable th) {
        return new Exception("Unexpected decode error", th);
    }

    /* JADX WARN: Type inference failed for: r8v2, types: [androidx.media3.decoder.DecoderException, java.lang.Exception] */
    /* JADX WARN: Type inference failed for: r8v3, types: [androidx.media3.decoder.DecoderException, java.lang.Exception] */
    @Override // p421.AbstractC4997
    /* renamed from: ˆʾ */
    public final DecoderException mo747(C4996 c4996, AbstractC5001 abstractC5001, boolean z) {
        C2665 c2665 = (C2665) abstractC5001;
        ByteBuffer byteBuffer = c4996.f18672;
        byteBuffer.getClass();
        AbstractC3731.m7857(byteBuffer.hasArray());
        AbstractC3731.m7849(byteBuffer.arrayOffset() == 0);
        try {
            int i = this.f10116;
            if (i == -1) {
                Context context = this.f10117;
                if (context != null) {
                    Point m7764 = AbstractC3712.m7764(context);
                    int i2 = m7764.x;
                    int i3 = m7764.y;
                    C1495 c1495 = c4996.f18666;
                    if (c1495 != null) {
                        int i4 = c1495.f5909;
                        if (i4 != -1) {
                            i2 *= i4;
                        }
                        int i5 = c1495.f5932;
                        if (i5 != -1) {
                            i3 *= i5;
                        }
                    }
                    i = (Math.max(i2, i3) * 2) - 1;
                } else {
                    i = 4096;
                }
            }
            c2665.f10118 = ˈ.ᵎﹶ(byteBuffer.array(), byteBuffer.remaining(), i);
            c2665.f18690 = c4996.f18671;
            return null;
        } catch (ParserException e) {
            return new Exception("Could not decode image data with BitmapFactory.", e);
        } catch (IOException e2) {
            return new Exception(e2);
        }
    }

    @Override // p421.AbstractC4997
    /* renamed from: ᵎﹶ */
    public final C4996 mo748() {
        return new C4996(1, 0);
    }

    @Override // p421.AbstractC4997
    /* renamed from: ᵔᵢ */
    public final AbstractC5001 mo749() {
        return new C2665(this);
    }
}
