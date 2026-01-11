package p182;

import androidx.media3.decoder.DecoderException;
import androidx.media3.extractor.text.SubtitleDecoderException;
import java.nio.ByteBuffer;
import p051.AbstractC1387;
import p051.C1388;
import p051.C1395;
import p051.InterfaceC1390;
import p051.InterfaceC1392;
import p051.InterfaceC1398;
import p305.AbstractC3731;
import p421.AbstractC4997;
import p421.AbstractC5001;
import p421.C4996;

/* renamed from: ˋـ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2758 extends AbstractC4997 implements InterfaceC1392 {

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final InterfaceC1398 f10510;

    public C2758(String str, InterfaceC1398 interfaceC1398) {
        super(new C1395[2], new AbstractC1387[2]);
        int i = this.f18681;
        C4996[] c4996Arr = this.f18679;
        AbstractC3731.m7857(i == c4996Arr.length);
        for (C4996 c4996 : c4996Arr) {
            c4996.m9843(1024);
        }
        this.f10510 = interfaceC1398;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.media3.decoder.DecoderException, java.lang.Exception] */
    @Override // p421.AbstractC4997
    /* renamed from: ʼˎ */
    public final DecoderException mo745(Throwable th) {
        return new Exception("Unexpected decode error", th);
    }

    @Override // p421.AbstractC4997
    /* renamed from: ˆʾ */
    public final DecoderException mo747(C4996 c4996, AbstractC5001 abstractC5001, boolean z) {
        C1395 c1395 = (C1395) c4996;
        AbstractC1387 abstractC1387 = (AbstractC1387) abstractC5001;
        try {
            ByteBuffer byteBuffer = c1395.f18672;
            byteBuffer.getClass();
            byte[] array = byteBuffer.array();
            int limit = byteBuffer.limit();
            InterfaceC1398 interfaceC1398 = this.f10510;
            if (z) {
                interfaceC1398.reset();
            }
            InterfaceC1390 mo4117 = interfaceC1398.mo4117(array, 0, limit);
            long j = c1395.f18671;
            long j2 = c1395.f5470;
            abstractC1387.f18690 = j;
            abstractC1387.f5444 = mo4117;
            if (j2 != Long.MAX_VALUE) {
                j = j2;
            }
            abstractC1387.f5445 = j;
            abstractC1387.f18692 = false;
            return null;
        } catch (SubtitleDecoderException e) {
            return e;
        }
    }

    @Override // p051.InterfaceC1392
    /* renamed from: ˈ */
    public final void mo4114(long j) {
    }

    @Override // p421.AbstractC4997
    /* renamed from: ᵎﹶ */
    public final C4996 mo748() {
        return new C1395();
    }

    @Override // p421.AbstractC4997
    /* renamed from: ᵔᵢ */
    public final AbstractC5001 mo749() {
        return new C1388(this);
    }
}
