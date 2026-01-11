package p134;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import p103.AbstractC1915;

@Retention(RetentionPolicy.RUNTIME)
/* renamed from: ˉʼ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public @interface InterfaceC2204 {
    String condition() default "";

    EnumC2207 delivery() default EnumC2207.f8665;

    boolean enabled() default true;

    InterfaceC2211[] filters() default {};

    Class invocation() default AbstractC1915.class;

    int priority() default 0;

    boolean rejectSubtypes() default false;
}
