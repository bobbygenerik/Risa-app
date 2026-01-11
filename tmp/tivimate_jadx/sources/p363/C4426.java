package p363;

import android.R;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.app.AlertController$RecycleListView;
import p353.DialogInterfaceOnKeyListenerC4320;

/* renamed from: ᵔᵢ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C4426 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f16469;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C4411 f16470;

    public C4426(Context context) {
        this(context, DialogInterfaceC4428.m8943(context, 0));
    }

    public C4426(Context context, int i) {
        this.f16470 = new C4411(new ContextThemeWrapper(context, DialogInterfaceC4428.m8943(context, i)));
        this.f16469 = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v16, types: [android.widget.ListAdapter] */
    /* JADX WARN: Type inference failed for: r1v25, types: [ᵔᵢ.ﹳٴ] */
    public DialogInterfaceC4428 create() {
        ?? r1;
        C4411 c4411 = this.f16470;
        ContextThemeWrapper contextThemeWrapper = c4411.f16420;
        ContextThemeWrapper contextThemeWrapper2 = c4411.f16420;
        DialogInterfaceC4428 dialogInterfaceC4428 = new DialogInterfaceC4428(contextThemeWrapper, this.f16469);
        View view = c4411.f16412;
        C4435 c4435 = dialogInterfaceC4428.f16481;
        if (view != null) {
            c4435.f16562 = view;
        } else {
            CharSequence charSequence = c4411.f16408;
            if (charSequence != null) {
                c4435.f16554 = charSequence;
                TextView textView = c4435.f16550;
                if (textView != null) {
                    textView.setText(charSequence);
                }
            }
            Drawable drawable = c4411.f16406;
            if (drawable != null) {
                c4435.f16561 = drawable;
                ImageView imageView = c4435.f16559;
                if (imageView != null) {
                    imageView.setVisibility(0);
                    c4435.f16559.setImageDrawable(drawable);
                }
            }
        }
        CharSequence charSequence2 = c4411.f16423;
        if (charSequence2 != null) {
            c4435.f16560 = charSequence2;
            TextView textView2 = c4435.f16544;
            if (textView2 != null) {
                textView2.setText(charSequence2);
            }
        }
        CharSequence charSequence3 = c4411.f16415;
        if (charSequence3 != null) {
            c4435.m8976(-1, charSequence3, c4411.f16417);
        }
        CharSequence charSequence4 = c4411.f16404;
        if (charSequence4 != null) {
            c4435.m8976(-2, charSequence4, c4411.f16407);
        }
        if (c4411.f16422 != null || c4411.f16409 != null) {
            AlertController$RecycleListView alertController$RecycleListView = (AlertController$RecycleListView) c4411.f16419.inflate(c4435.f16551, (ViewGroup) null);
            if (c4411.f16418) {
                r1 = new C4432(c4411, contextThemeWrapper2, c4435.f16565, c4411.f16422, alertController$RecycleListView);
            } else {
                int i = c4411.f16421 ? c4435.f16549 : c4435.f16555;
                Object obj = c4411.f16409;
                Object obj2 = obj;
                if (obj == null) {
                    obj2 = new ArrayAdapter(contextThemeWrapper2, i, R.id.text1, c4411.f16422);
                }
                r1 = obj2;
            }
            c4435.f16552 = r1;
            c4435.f16545 = c4411.f16413;
            if (c4411.f16416 != null) {
                alertController$RecycleListView.setOnItemClickListener(new C4431(c4411, c4435));
            } else if (c4411.f16411 != null) {
                alertController$RecycleListView.setOnItemClickListener(new C4405(c4411, alertController$RecycleListView, c4435));
            }
            if (c4411.f16421) {
                alertController$RecycleListView.setChoiceMode(1);
            } else if (c4411.f16418) {
                alertController$RecycleListView.setChoiceMode(2);
            }
            c4435.f16576 = alertController$RecycleListView;
        }
        View view2 = c4411.f16410;
        if (view2 != null) {
            c4435.f16567 = view2;
            c4435.f16569 = false;
        }
        dialogInterfaceC4428.setCancelable(true);
        dialogInterfaceC4428.setCanceledOnTouchOutside(true);
        dialogInterfaceC4428.setOnCancelListener(null);
        dialogInterfaceC4428.setOnDismissListener(null);
        DialogInterfaceOnKeyListenerC4320 dialogInterfaceOnKeyListenerC4320 = c4411.f16414;
        if (dialogInterfaceOnKeyListenerC4320 != null) {
            dialogInterfaceC4428.setOnKeyListener(dialogInterfaceOnKeyListenerC4320);
        }
        return dialogInterfaceC4428;
    }

    public Context getContext() {
        return this.f16470.f16420;
    }

    public C4426 setNegativeButton(int i, DialogInterface.OnClickListener onClickListener) {
        C4411 c4411 = this.f16470;
        c4411.f16404 = c4411.f16420.getText(i);
        c4411.f16407 = onClickListener;
        return this;
    }

    public C4426 setPositiveButton(int i, DialogInterface.OnClickListener onClickListener) {
        C4411 c4411 = this.f16470;
        c4411.f16415 = c4411.f16420.getText(i);
        c4411.f16417 = onClickListener;
        return this;
    }

    public C4426 setTitle(CharSequence charSequence) {
        this.f16470.f16408 = charSequence;
        return this;
    }

    public C4426 setView(View view) {
        this.f16470.f16410 = view;
        return this;
    }
}
