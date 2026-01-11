package p090;

import java.io.File;
import java.util.LinkedHashSet;
import p329.InterfaceC4104;
import p329.InterfaceC4106;

/* renamed from: ʿᵢ.ᵎⁱ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1823 implements InterfaceC1836 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final LinkedHashSet f7354 = new LinkedHashSet();

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final Object f7355 = new Object();

    /* renamed from: ʽ, reason: contains not printable characters */
    public final InterfaceC4104 f7356;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final InterfaceC4106 f7357;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final InterfaceC1802 f7358;

    public C1823(InterfaceC1802 interfaceC1802, InterfaceC4106 interfaceC4106, InterfaceC4104 interfaceC4104) {
        this.f7358 = interfaceC1802;
        this.f7357 = interfaceC4106;
        this.f7356 = interfaceC4104;
    }

    @Override // p090.InterfaceC1836
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C1826 mo4759() {
        File canonicalFile = ((File) this.f7356.mo716()).getCanonicalFile();
        synchronized (f7355) {
            String absolutePath = canonicalFile.getAbsolutePath();
            LinkedHashSet linkedHashSet = f7354;
            if (linkedHashSet.contains(absolutePath)) {
                throw new IllegalStateException(("There are multiple DataStores active for the same file: " + absolutePath + ". You should either maintain your DataStore as a singleton or confirm that there is no two DataStore's active on the same file (by confirming that the scope is cancelled).").toString());
            }
            linkedHashSet.add(absolutePath);
        }
        return new C1826(canonicalFile, this.f7358, (InterfaceC1804) this.f7357.mo3844(canonicalFile), new C1796(0, canonicalFile));
    }
}
