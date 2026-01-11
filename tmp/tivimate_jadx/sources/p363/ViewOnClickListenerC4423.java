package p363;

import android.content.Context;
import android.content.ContextWrapper;
import android.view.View;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import p137.AbstractC2305;

/* renamed from: ᵔᵢ.ᴵˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class ViewOnClickListenerC4423 implements View.OnClickListener {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public Method f16438;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final View f16439;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public Context f16440;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final String f16441;

    public ViewOnClickListenerC4423(View view, String str) {
        this.f16439 = view;
        this.f16441 = str;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        String str;
        Method method;
        if (this.f16438 == null) {
            View view2 = this.f16439;
            Context context = view2.getContext();
            while (true) {
                String str2 = this.f16441;
                if (context == null) {
                    int id = view2.getId();
                    if (id == -1) {
                        str = "";
                    } else {
                        str = " with id '" + view2.getContext().getResources().getResourceEntryName(id) + "'";
                    }
                    StringBuilder m5370 = AbstractC2305.m5370("Could not find method ", str2, "(View) in a parent or ancestor Context for android:onClick attribute defined on view ");
                    m5370.append(view2.getClass());
                    m5370.append(str);
                    throw new IllegalStateException(m5370.toString());
                }
                try {
                    if (!context.isRestricted() && (method = context.getClass().getMethod(str2, View.class)) != null) {
                        this.f16438 = method;
                        this.f16440 = context;
                    }
                } catch (NoSuchMethodException unused) {
                }
                context = context instanceof ContextWrapper ? ((ContextWrapper) context).getBaseContext() : null;
            }
        }
        try {
            this.f16438.invoke(this.f16440, view);
        } catch (IllegalAccessException e) {
            throw new IllegalStateException("Could not execute non-public method for android:onClick", e);
        } catch (InvocationTargetException e2) {
            throw new IllegalStateException("Could not execute method for android:onClick", e2);
        }
    }
}
