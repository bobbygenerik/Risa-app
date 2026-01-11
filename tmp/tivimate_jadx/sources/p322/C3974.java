package p322;

import androidx.work.Worker;
import p329.InterfaceC4104;

/* renamed from: ᴵˋ.ᵎⁱ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C3974 implements InterfaceC4104 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f15321;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ Worker f15322;

    public /* synthetic */ C3974(Worker worker, int i) {
        this.f15321 = i;
        this.f15322 = worker;
    }

    @Override // p329.InterfaceC4104
    /* renamed from: ʽ */
    public final Object mo716() {
        switch (this.f15321) {
            case 0:
                return this.f15322.mo1022();
            default:
                this.f15322.getClass();
                throw new IllegalStateException("Expedited WorkRequests require a Worker to provide an implementation for `getForegroundInfo()`");
        }
    }
}
