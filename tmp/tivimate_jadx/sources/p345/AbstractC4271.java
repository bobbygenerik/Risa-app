package p345;

/* renamed from: ᵎـ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC4271 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final Integer f15845;

    static {
        Integer num;
        Object obj;
        Integer num2 = null;
        try {
            obj = Class.forName("android.os.Build$VERSION").getField("SDK_INT").get(null);
        } catch (Throwable unused) {
        }
        if (obj instanceof Integer) {
            num = (Integer) obj;
            if (num != null && num.intValue() > 0) {
                num2 = num;
            }
            f15845 = num2;
        }
        num = null;
        if (num != null) {
            num2 = num;
        }
        f15845 = num2;
    }
}
