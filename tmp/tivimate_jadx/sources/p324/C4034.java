package p324;

import java.util.concurrent.CancellationException;
import p126.AbstractC2141;
import p329.InterfaceC4106;
import ʼⁱ.ᴵˊ;

/* renamed from: ᴵי.ᴵʼ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4034 extends AbstractC2141 implements InterfaceC4036 {

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static final C4034 f15423 = new AbstractC2141(C3997.f15367);

    @Override // p324.InterfaceC4036
    public final boolean isCancelled() {
        return false;
    }

    @Override // p324.InterfaceC4036
    public final boolean start() {
        return false;
    }

    public final String toString() {
        return "NonCancellable";
    }

    @Override // p324.InterfaceC4036
    /* renamed from: ʽ */
    public final boolean mo8230() {
        return true;
    }

    @Override // p324.InterfaceC4036
    /* renamed from: ˈʿ */
    public final CancellationException mo8236() {
        throw new IllegalStateException("This job is always active");
    }

    @Override // p324.InterfaceC4036
    /* renamed from: ᴵˑ */
    public final InterfaceC4041 mo8251(InterfaceC4106 interfaceC4106) {
        return C3989.f15358;
    }

    @Override // p324.InterfaceC4036
    /* renamed from: ᵎˊ */
    public final InterfaceC4043 mo8252(C4031 c4031) {
        return C3989.f15358;
    }

    @Override // p324.InterfaceC4036, p041.InterfaceC1298
    /* renamed from: ᵎﹶ */
    public final void mo3899(CancellationException cancellationException) {
    }

    @Override // p324.InterfaceC4036
    /* renamed from: ﹳᐧ */
    public final InterfaceC4041 mo8258(boolean z, boolean z2, ᴵˊ r3) {
        return C3989.f15358;
    }
}
