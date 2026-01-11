package p230;

import android.animation.ObjectAnimator;
import android.animation.TypeConverter;
import android.graphics.Path;
import android.util.Property;

/* renamed from: ˑʿ.ᵔʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3175 {
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static <T, V> ObjectAnimator m6992(T t, Property<T, V> property, Path path) {
        return ObjectAnimator.ofObject(t, property, (TypeConverter) null, path);
    }
}
