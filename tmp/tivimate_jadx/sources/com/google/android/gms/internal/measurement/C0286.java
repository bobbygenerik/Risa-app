package com.google.android.gms.internal.measurement;

import android.support.v4.media.session.AbstractC0001;
import p223.C3056;

/* renamed from: com.google.android.gms.internal.measurement.ʾˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0286 implements InterfaceC0345 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f1890;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C0286 f1887 = new C0286(0);

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final C0286 f1877 = new C0286(1);

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final C0286 f1879 = new C0286(2);

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final C0286 f1882 = new C0286(3);

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static final C0286 f1889 = new C0286(4);

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static final C0286 f1884 = new C0286(5);

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static final C0286 f1886 = new C0286(6);

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static final C0286 f1876 = new C0286(7);

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static final C0286 f1878 = new C0286(8);

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public static final C0286 f1883 = new C0286(9);

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public static final C0286 f1888 = new C0286(10);

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public static final C0286 f1880 = new C0286(11);

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public static final C0286 f1885 = new C0286(12);

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public static final C0286 f1881 = new C0286(13);

    public /* synthetic */ C0286(int i) {
        this.f1890 = i;
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0345
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final boolean mo1297(int i) {
        switch (this.f1890) {
            case 0:
                return i == 0 || i == 1 || i == 2 || i == 3 || i == 4;
            case 1:
                switch (i) {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                        return true;
                    default:
                        return false;
                }
            case 2:
                return i == 0 || i == 1 || i == 2;
            case 3:
                return ˈˋ.ʾˊ.ᵎⁱ(i) != 0;
            case 4:
                return i == 0 || i == 1 || i == 2;
            case 5:
                return i == 0 || i == 1 || i == 2 || i == 3 || i == 4 || i == 5;
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                return i == 0 || i == 1 || i == 2 || i == 3 || i == 4;
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                return i == 0 || i == 1 || i == 2;
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                return i == 0 || i == 1;
            case 9:
                return i == 1 || i == 2;
            case 10:
                return AbstractC0001.m19(i) != 0;
            case 11:
                return i == 0 || i == 1 || i == 2 || i == 3 || i == 4 || i == 5;
            case 12:
                return i == 0 || i == 1 || i == 2 || i == 3 || i == 4;
            default:
                return i == 0 || i == 1 || i == 2 || i == 3 || i == 4;
        }
    }
}
