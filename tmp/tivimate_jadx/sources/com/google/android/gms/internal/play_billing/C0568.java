package com.google.android.gms.internal.play_billing;

import android.support.v4.media.session.AbstractC0001;
import p223.C3056;

/* renamed from: com.google.android.gms.internal.play_billing.ˊᵔ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0568 implements InterfaceC0594 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f2365;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C0568 f2363 = new C0568(0);

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final C0568 f2358 = new C0568(1);

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final C0568 f2359 = new C0568(2);

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final C0568 f2360 = new C0568(3);

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static final C0568 f2364 = new C0568(4);

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static final C0568 f2361 = new C0568(5);

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static final C0568 f2362 = new C0568(6);

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static final C0568 f2357 = new C0568(7);

    public /* synthetic */ C0568(int i) {
        this.f2365 = i;
    }

    @Override // com.google.android.gms.internal.play_billing.InterfaceC0594
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final boolean mo2137(int i) {
        switch (this.f2365) {
            case 0:
                switch (i) {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                    case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                        return true;
                    default:
                        return false;
                }
            case 1:
                switch (i) {
                    default:
                        switch (i) {
                            case 22:
                            case 23:
                            case 24:
                            case 25:
                            case 26:
                            case 27:
                            case 28:
                            case 29:
                            case 30:
                            case 31:
                            case 32:
                            case 33:
                            case 34:
                            case 35:
                            case 36:
                                break;
                            default:
                                return false;
                        }
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                    case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                    case C3056.BYTES_FIELD_NUMBER /* 8 */:
                    case 9:
                    case 10:
                    case 11:
                    case 12:
                    case 13:
                    case 14:
                    case 15:
                        return true;
                }
            case 2:
                return AbstractC0001.m4(i) != 0;
            case 3:
                return (i != 0 ? i != 1 ? i != 2 ? i != 3 ? null : EnumC0583.f2384 : EnumC0583.f2381 : EnumC0583.f2380 : EnumC0583.f2383) != null;
            case 4:
                return i == 0 || i == 1 || i == 2 || i == 3;
            case 5:
                switch (i) {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                    case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                    case C3056.BYTES_FIELD_NUMBER /* 8 */:
                    case 9:
                    case 10:
                    case 11:
                    case 12:
                    case 13:
                    case 17:
                    case 18:
                    case 19:
                    case 20:
                        return true;
                    case 14:
                    case 15:
                    case 16:
                    default:
                        return false;
                }
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                switch (i) {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                    case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                        return true;
                    default:
                        return false;
                }
            default:
                return i == 0 || i == 1;
        }
    }
}
