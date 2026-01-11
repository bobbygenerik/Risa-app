package p351;

import android.os.Build;
import p059.AbstractC1524;
import p240.C3231;
import p396.C4739;

/* renamed from: ᵎﾞ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4296 extends AbstractC4299 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ int f15925;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C4296(AbstractC1524 abstractC1524, int i) {
        super(abstractC1524);
        this.f15925 = i;
    }

    @Override // p351.AbstractC4299
    /* renamed from: ˈ, reason: contains not printable characters */
    public final int mo8702() {
        switch (this.f15925) {
            case 0:
                return 6;
            case 1:
                return 5;
            case 2:
                return 7;
            case 3:
                return 7;
            default:
                return 9;
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0002. Please report as an issue. */
    @Override // p351.AbstractC4299
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final boolean mo8703(Object obj) {
        boolean booleanValue;
        switch (this.f15925) {
            case 0:
                booleanValue = ((Boolean) obj).booleanValue();
                return !booleanValue;
            case 1:
                booleanValue = ((Boolean) obj).booleanValue();
                return !booleanValue;
            case 2:
                C4739 c4739 = (C4739) obj;
                boolean z = c4739.f17892;
                return Build.VERSION.SDK_INT < 26 ? !z : !(z && c4739.f17891);
            case 3:
                C4739 c47392 = (C4739) obj;
                return !c47392.f17892 || c47392.f17889;
            default:
                booleanValue = ((Boolean) obj).booleanValue();
                return !booleanValue;
        }
    }

    @Override // p351.InterfaceC4297
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final boolean mo8704(C3231 c3231) {
        switch (this.f15925) {
            case 0:
                return c3231.f12327.f15290;
            case 1:
                return c3231.f12327.f15292;
            case 2:
                return c3231.f12327.f15296 == 2;
            case 3:
                int i = c3231.f12327.f15296;
                return i == 3 || (Build.VERSION.SDK_INT >= 30 && i == 6);
            default:
                return c3231.f12327.f15297;
        }
    }
}
