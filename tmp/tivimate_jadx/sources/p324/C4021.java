package p324;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* renamed from: ᴵי.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4021 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f15401 = AtomicIntegerFieldUpdater.newUpdater(C4021.class, "notCompletedCount$volatile");
    private volatile /* synthetic */ int notCompletedCount$volatile;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final InterfaceC3998[] f15402;

    public C4021(InterfaceC3998[] interfaceC3998Arr) {
        this.f15402 = interfaceC3998Arr;
        this.notCompletedCount$volatile = interfaceC3998Arr.length;
    }
}
