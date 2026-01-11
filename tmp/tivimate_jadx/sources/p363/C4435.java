package p363;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Message;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewStub;
import android.view.Window;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.appcompat.app.AlertController$RecycleListView;
import androidx.core.widget.NestedScrollView;
import androidx.leanback.widget.ViewOnClickListenerC0083;
import ar.tvplayer.tv.R;
import java.lang.ref.WeakReference;
import p011.HandlerC0874;
import p350.AbstractC4295;

/* renamed from: ᵔᵢ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4435 {

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public TextView f16544;

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public Button f16546;

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public CharSequence f16547;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Window f16548;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final int f16549;

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public TextView f16550;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final int f16551;

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public ListAdapter f16552;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public CharSequence f16553;

    /* renamed from: ˈ, reason: contains not printable characters */
    public CharSequence f16554;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final int f16555;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public CharSequence f16556;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public Button f16557;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final HandlerC0874 f16558;

    /* renamed from: ˏי, reason: contains not printable characters */
    public ImageView f16559;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public CharSequence f16560;

    /* renamed from: יـ, reason: contains not printable characters */
    public Drawable f16561;

    /* renamed from: ـˆ, reason: contains not printable characters */
    public View f16562;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public Message f16564;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final int f16565;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final boolean f16566;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public View f16567;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public Message f16568;

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public Message f16570;

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public final int f16571;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final DialogInterfaceC4428 f16572;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Context f16573;

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public NestedScrollView f16574;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public Button f16575;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public AlertController$RecycleListView f16576;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public boolean f16569 = false;

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public int f16545 = -1;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final ViewOnClickListenerC0083 f16563 = new ViewOnClickListenerC0083(7, this);

    public C4435(Context context, DialogInterfaceC4428 dialogInterfaceC4428, Window window) {
        this.f16573 = context;
        this.f16572 = dialogInterfaceC4428;
        this.f16548 = window;
        HandlerC0874 handlerC0874 = new HandlerC0874();
        handlerC0874.f3721 = new WeakReference(dialogInterfaceC4428);
        this.f16558 = handlerC0874;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, AbstractC4295.f15911, R.attr.35n, 0);
        this.f16571 = obtainStyledAttributes.getResourceId(0, 0);
        obtainStyledAttributes.getResourceId(2, 0);
        this.f16551 = obtainStyledAttributes.getResourceId(4, 0);
        this.f16565 = obtainStyledAttributes.getResourceId(5, 0);
        this.f16549 = obtainStyledAttributes.getResourceId(7, 0);
        this.f16555 = obtainStyledAttributes.getResourceId(3, 0);
        this.f16566 = obtainStyledAttributes.getBoolean(6, true);
        obtainStyledAttributes.getDimensionPixelSize(1, 0);
        obtainStyledAttributes.recycle();
        dialogInterfaceC4428.m8944().mo8939(1);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static ViewGroup m8974(View view, View view2) {
        if (view == null) {
            if (view2 instanceof ViewStub) {
                view2 = ((ViewStub) view2).inflate();
            }
            return (ViewGroup) view2;
        }
        if (view2 != null) {
            ViewParent parent = view2.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(view2);
            }
        }
        if (view instanceof ViewStub) {
            view = ((ViewStub) view).inflate();
        }
        return (ViewGroup) view;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static boolean m8975(View view) {
        if (view.onCheckIsTextEditor()) {
            return true;
        }
        if (!(view instanceof ViewGroup)) {
            return false;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        while (childCount > 0) {
            childCount--;
            if (m8975(viewGroup.getChildAt(childCount))) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m8976(int i, CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        Message obtainMessage = onClickListener != null ? this.f16558.obtainMessage(i, onClickListener) : null;
        if (i == -3) {
            this.f16547 = charSequence;
            this.f16570 = obtainMessage;
        } else if (i == -2) {
            this.f16556 = charSequence;
            this.f16568 = obtainMessage;
        } else {
            if (i != -1) {
                throw new IllegalArgumentException("Button does not exist");
            }
            this.f16553 = charSequence;
            this.f16564 = obtainMessage;
        }
    }
}
