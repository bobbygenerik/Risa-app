package p382;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@Retention(RetentionPolicy.RUNTIME)
/* renamed from: ⁱʻ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public @interface InterfaceC4568 {
    boolean hasBody() default false;

    String method();

    String path() default "";
}
