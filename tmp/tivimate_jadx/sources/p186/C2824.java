package p186;

import android.graphics.Rect;
import android.view.WindowInsets;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import p349.C4292;

/* renamed from: ˋᵔ.ᵎᵔ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2824 extends AbstractC2797 {

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static Field f10605;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static Constructor f10606;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static boolean f10607;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static boolean f10608;

    /* renamed from: ʽ, reason: contains not printable characters */
    public WindowInsets f10609;

    /* renamed from: ˈ, reason: contains not printable characters */
    public C4292 f10610;

    public C2824() {
        this.f10609 = m6284();
    }

    public C2824(C2816 c2816) {
        super(c2816);
        this.f10609 = c2816.m6258();
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    private static WindowInsets m6284() {
        if (!f10608) {
            try {
                f10605 = WindowInsets.class.getDeclaredField("CONSUMED");
            } catch (ReflectiveOperationException e) {
            }
            f10608 = true;
        }
        Field field = f10605;
        if (field != null) {
            try {
                WindowInsets windowInsets = (WindowInsets) field.get(null);
                if (windowInsets != null) {
                    return new WindowInsets(windowInsets);
                }
            } catch (ReflectiveOperationException e2) {
            }
        }
        if (!f10607) {
            try {
                f10606 = WindowInsets.class.getConstructor(Rect.class);
            } catch (ReflectiveOperationException e3) {
            }
            f10607 = true;
        }
        Constructor constructor = f10606;
        if (constructor != null) {
            try {
                return (WindowInsets) constructor.newInstance(new Rect());
            } catch (ReflectiveOperationException e4) {
            }
        }
        return null;
    }

    @Override // p186.AbstractC2797
    /* renamed from: ˑﹳ */
    public void mo6220(C4292 c4292) {
        this.f10610 = c4292;
    }

    @Override // p186.AbstractC2797
    /* renamed from: ᵎﹶ */
    public void mo6221(C4292 c4292) {
        WindowInsets windowInsets = this.f10609;
        if (windowInsets != null) {
            this.f10609 = windowInsets.replaceSystemWindowInsets(c4292.f15891, c4292.f15890, c4292.f15888, c4292.f15889);
        }
    }

    @Override // p186.AbstractC2797
    /* renamed from: ⁱˊ */
    public C2816 mo6223() {
        m6224();
        C2816 m6253 = C2816.m6253(null, this.f10609);
        C4292[] c4292Arr = this.f10548;
        C2822 c2822 = m6253.f10589;
        c2822.mo6242(c4292Arr);
        c2822.mo6198(this.f10610);
        return m6253;
    }
}
