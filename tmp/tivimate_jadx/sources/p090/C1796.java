package p090;

import java.io.File;
import p013.C0907;
import p152.AbstractC2452;
import p164.C2575;
import p223.C3058;
import p324.InterfaceC4041;
import p329.InterfaceC4104;
import p340.InterfaceC4254;
import p396.AbstractC4737;
import p435.AbstractC5143;
import ᵎˉ.ⁱˊ;

/* renamed from: ʿᵢ.ˉٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1796 extends AbstractC2452 implements InterfaceC4104 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ Object f7259;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ int f7260;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C1796(int i, Object obj) {
        super(0);
        this.f7260 = i;
        this.f7259 = obj;
    }

    @Override // p329.InterfaceC4104
    /* renamed from: ʽ */
    public final Object mo716() {
        switch (this.f7260) {
            case 0:
                Object obj = C1823.f7355;
                File file = (File) this.f7259;
                synchronized (obj) {
                    C1823.f7354.remove(file.getAbsolutePath());
                }
                return C0907.f3832;
            case 1:
                ((InterfaceC4041) this.f7259).mo4747();
                return C0907.f3832;
            case 2:
                File file2 = (File) ((C3058) this.f7259).mo716();
                if (AbstractC5143.m10100('.', file2.getName(), "").equals("preferences_pb")) {
                    String str = C2575.f9776;
                    return ⁱˊ.ٴﹶ(file2.getAbsoluteFile());
                }
                throw new IllegalStateException(("File extension for file: " + file2 + " does not match required extension for Preferences file: preferences_pb").toString());
            default:
                return new AbstractC4737[((InterfaceC4254[]) this.f7259).length];
        }
    }
}
