package p392;

import android.content.Context;
import androidx.media3.exoplayer.ExoPlaybackException;
import p055.C1485;
import p305.C3721;
import p457.C5380;

/* renamed from: ⁱי.ٴﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4677 implements InterfaceC4686 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final Object f17547;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public boolean f17548;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final Object f17549;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public Object f17550;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public boolean f17551;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public Object f17552;

    public C4677(Context context, C5380 c5380) {
        this.f17547 = context.getApplicationContext();
        this.f17549 = c5380;
        this.f17550 = C3721.f14496;
    }

    public C4677(C4683 c4683, C3721 c3721) {
        this.f17549 = c4683;
        this.f17547 = new C4643(c3721);
        this.f17548 = true;
    }

    @Override // p392.InterfaceC4686
    /* renamed from: ʽ */
    public void mo759(C1485 c1485) {
        InterfaceC4686 interfaceC4686 = (InterfaceC4686) this.f17550;
        if (interfaceC4686 != null) {
            interfaceC4686.mo759(c1485);
            c1485 = ((InterfaceC4686) this.f17550).mo771();
        }
        ((C4643) this.f17547).mo759(c1485);
    }

    @Override // p392.InterfaceC4686
    /* renamed from: ˑﹳ */
    public C1485 mo771() {
        InterfaceC4686 interfaceC4686 = (InterfaceC4686) this.f17550;
        return interfaceC4686 != null ? interfaceC4686.mo771() : (C1485) ((C4643) this.f17547).f17349;
    }

    @Override // p392.InterfaceC4686
    /* renamed from: ᵎﹶ */
    public long mo777() {
        if (this.f17548) {
            return ((C4643) this.f17547).mo777();
        }
        InterfaceC4686 interfaceC4686 = (InterfaceC4686) this.f17550;
        interfaceC4686.getClass();
        return interfaceC4686.mo777();
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public void m9289(AbstractC4671 abstractC4671) {
        InterfaceC4686 interfaceC4686;
        InterfaceC4686 mo757 = abstractC4671.mo757();
        if (mo757 == null || mo757 == (interfaceC4686 = (InterfaceC4686) this.f17550)) {
            return;
        }
        if (interfaceC4686 != null) {
            throw new ExoPlaybackException(2, new IllegalStateException("Multiple renderer media clocks enabled."), 1000);
        }
        this.f17550 = mo757;
        this.f17552 = abstractC4671;
        mo757.mo759((C1485) ((C4643) this.f17547).f17349);
    }

    @Override // p392.InterfaceC4686
    /* renamed from: ﾞᴵ */
    public boolean mo782() {
        if (this.f17548) {
            ((C4643) this.f17547).getClass();
            return false;
        }
        InterfaceC4686 interfaceC4686 = (InterfaceC4686) this.f17550;
        interfaceC4686.getClass();
        return interfaceC4686.mo782();
    }
}
