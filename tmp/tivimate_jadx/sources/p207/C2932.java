package p207;

import java.util.EnumSet;
import java.util.Set;
import p111.C1959;
import p111.C1960;
import p223.C3056;
import p366.C4476;
import ʽⁱ.ᵎﹶ;
import ﹳˋ.ʼˎ;

/* renamed from: ˎᵔ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2932 extends AbstractC2936 {

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final /* synthetic */ int f11095;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2932(int i, EnumC2935 enumC2935, int i2) {
        super(EnumC2933.f11098, i, enumC2935, EnumSet.of(enumC2935));
        this.f11095 = i2;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C2932(EnumC2933 enumC2933, int i, EnumSet enumSet) {
        super(enumC2933, i, enumSet);
        this.f11095 = 3;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C2932(EnumC2933 enumC2933, int i, EnumC2935 enumC2935, Set set) {
        super(enumC2933, i, enumC2935, set);
        this.f11095 = 2;
    }

    @Override // p207.AbstractC2936
    /* renamed from: ʽ */
    public final ᵎﹶ mo6458(ʼˎ r3) {
        switch (this.f11095) {
            case 0:
                return new C1960(r3, 0);
            case 1:
                return new C1960(r3, 2);
            case 2:
                return new C1960(r3, 8);
            case 3:
                return new C1960(r3, 9);
            case 4:
                return new C1960(r3, 3);
            case 5:
                return new C1960(r3, 4);
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                return new C1960(r3, 1);
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                return new C1960(r3, 6);
            default:
                return new C1960(r3, 5);
        }
    }

    @Override // p207.AbstractC2936
    /* renamed from: ˈ */
    public final ᵎﹶ mo6459(C4476 c4476) {
        switch (this.f11095) {
            case 0:
                return new C1959(c4476, 0);
            case 1:
                return new C1959(c4476, 2);
            case 2:
                return new C1959(c4476, 8);
            case 3:
                return new C1959(c4476, 9);
            case 4:
                return new C1959(c4476, 3);
            case 5:
                return new C1959(c4476, 4);
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                return new C1959(c4476, 1);
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                return new C1959(c4476, 6);
            default:
                return new C1959(c4476, 5);
        }
    }
}
