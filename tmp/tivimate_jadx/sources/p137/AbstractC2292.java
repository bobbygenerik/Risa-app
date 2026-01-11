package p137;

import android.widget.AbsListView;
import java.lang.reflect.Field;

/* renamed from: ˉˆ.י, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC2292 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final Field f8969;

    static {
        Field field = null;
        try {
            field = AbsListView.class.getDeclaredField("mIsChildViewEnabled");
            field.setAccessible(true);
        } catch (NoSuchFieldException e) {
            e.printStackTrace();
        }
        f8969 = field;
    }
}
