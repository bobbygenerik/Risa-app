package p319;

import android.R;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.DialogFragment;
import android.app.FragmentManager;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.util.TypedValue;
import com.google.android.gms.common.api.GoogleApiActivity;
import p035.AbstractC1220;
import p151.C2423;
import p151.C2434;
import p229.C3085;
import p229.C3137;
import p296.AbstractC3659;
import p296.AbstractC3683;
import p296.DialogInterfaceOnClickListenerC3671;
import p307.AbstractC3740;
import p347.AbstractC4278;
import p363.AbstractActivityC4410;
import p404.C4790;
import p409.InterfaceC4847;

/* renamed from: ᴵˈ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3930 extends C3940 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final Object f15205 = new Object();

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final C3930 f15206 = new Object();

    /* renamed from: ˈ, reason: contains not printable characters */
    public static AlertDialog m8095(Activity activity, int i, DialogInterfaceOnClickListenerC3671 dialogInterfaceOnClickListenerC3671, DialogInterface.OnCancelListener onCancelListener) {
        if (i == 0) {
            return null;
        }
        TypedValue typedValue = new TypedValue();
        activity.getTheme().resolveAttribute(R.attr.alertDialogTheme, typedValue, true);
        AlertDialog.Builder builder = "Theme.Dialog.Alert".equals(activity.getResources().getResourceEntryName(typedValue.resourceId)) ? new AlertDialog.Builder(activity, 5) : null;
        if (builder == null) {
            builder = new AlertDialog.Builder(activity);
        }
        builder.setMessage(AbstractC3683.m7721(activity, i));
        if (onCancelListener != null) {
            builder.setOnCancelListener(onCancelListener);
        }
        Resources resources = activity.getResources();
        String string = i != 1 ? i != 2 ? i != 3 ? resources.getString(R.string.ok) : resources.getString(ar.tvplayer.tv.R.string.45m) : resources.getString(ar.tvplayer.tv.R.string.12q) : resources.getString(ar.tvplayer.tv.R.string.68s);
        if (string != null) {
            builder.setPositiveButton(string, dialogInterfaceOnClickListenerC3671);
        }
        String m7718 = AbstractC3683.m7718(activity, i);
        if (m7718 != null) {
            builder.setTitle(m7718);
        }
        AbstractC3740.m7932(i, "Creating dialog for Google Play services availability issue. ConnectionResult=");
        new IllegalArgumentException();
        return builder.create();
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [ᴵˈ.ʽ, android.app.DialogFragment] */
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static void m8096(Activity activity, AlertDialog alertDialog, String str, DialogInterface.OnCancelListener onCancelListener) {
        try {
            if (activity instanceof AbstractActivityC4410) {
                C3085 m8914 = ((AbstractActivityC4410) activity).m8914();
                C3922 c3922 = new C3922();
                AbstractC3659.m7683(alertDialog, "Cannot display null dialog");
                alertDialog.setOnCancelListener(null);
                alertDialog.setOnDismissListener(null);
                c3922.f15186 = alertDialog;
                if (onCancelListener != null) {
                    c3922.f15187 = onCancelListener;
                }
                c3922.f11669 = false;
                c3922.f11671 = true;
                m8914.getClass();
                C3137 c3137 = new C3137(m8914);
                c3137.f11996 = true;
                c3137.m6879(0, c3922, str, 1);
                c3137.m6890();
                return;
            }
        } catch (NoClassDefFoundError unused) {
        }
        FragmentManager fragmentManager = activity.getFragmentManager();
        ?? dialogFragment = new DialogFragment();
        AbstractC3659.m7683(alertDialog, "Cannot display null dialog");
        alertDialog.setOnCancelListener(null);
        alertDialog.setOnDismissListener(null);
        dialogFragment.f15190 = alertDialog;
        if (onCancelListener != null) {
            dialogFragment.f15191 = onCancelListener;
        }
        dialogFragment.show(fragmentManager, str);
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m8097(GoogleApiActivity googleApiActivity, int i, GoogleApiActivity googleApiActivity2) {
        AlertDialog m8095 = m8095(googleApiActivity, i, new DialogInterfaceOnClickListenerC3671(super.m8113(i, googleApiActivity, "d"), googleApiActivity, 0), googleApiActivity2);
        if (m8095 == null) {
            return;
        }
        m8096(googleApiActivity, m8095, "GooglePlayServicesErrorDialog", googleApiActivity2);
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void m8098(Activity activity, InterfaceC4847 interfaceC4847, int i, DialogInterface.OnCancelListener onCancelListener) {
        AlertDialog m8095 = m8095(activity, i, new DialogInterfaceOnClickListenerC3671(super.m8113(i, activity, "d"), interfaceC4847, 1), onCancelListener);
        if (m8095 == null) {
            return;
        }
        m8096(activity, m8095, "GooglePlayServicesErrorDialog", onCancelListener);
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void m8099(Context context, int i, PendingIntent pendingIntent) {
        int i2;
        AbstractC1220.m3773(i, "GMS core API Availability. ConnectionResult=", ", tag=null");
        new IllegalArgumentException();
        if (i == 18) {
            new HandlerC3925(this, context).sendEmptyMessageDelayed(1, 120000L);
            return;
        }
        if (pendingIntent == null) {
            if (i == 6) {
                return;
            } else {
                return;
            }
        }
        String m7720 = i == 6 ? AbstractC3683.m7720(context, "common_google_play_services_resolution_required_title") : AbstractC3683.m7718(context, i);
        if (m7720 == null) {
            m7720 = context.getResources().getString(ar.tvplayer.tv.R.string.kb);
        }
        String m7719 = (i == 6 || i == 19) ? AbstractC3683.m7719(context, "common_google_play_services_resolution_required_text", AbstractC3683.m7722(context)) : AbstractC3683.m7721(context, i);
        Resources resources = context.getResources();
        Object systemService = context.getSystemService("notification");
        AbstractC3659.m7687(systemService);
        NotificationManager notificationManager = (NotificationManager) systemService;
        C2423 c2423 = new C2423(context, null);
        c2423.f9363 = true;
        c2423.f9361.flags |= 16;
        c2423.f9362 = C2423.m5528(m7720);
        C4790 c4790 = new C4790(17, false);
        c4790.f18034 = C2423.m5528(m7719);
        c2423.m5529(c4790);
        PackageManager packageManager = context.getPackageManager();
        if (AbstractC4278.f15857 == null) {
            AbstractC4278.f15857 = Boolean.valueOf(packageManager.hasSystemFeature("android.hardware.type.watch"));
        }
        if (AbstractC4278.f15857.booleanValue()) {
            c2423.f9361.icon = context.getApplicationInfo().icon;
            c2423.f9366 = 2;
            if (AbstractC4278.m8654(context)) {
                c2423.f9367.add(new C2434(resources.getString(ar.tvplayer.tv.R.string.6qr), pendingIntent));
            } else {
                c2423.f9364 = pendingIntent;
            }
        } else {
            c2423.f9361.icon = R.drawable.stat_sys_warning;
            c2423.f9361.tickerText = C2423.m5528(resources.getString(ar.tvplayer.tv.R.string.kb));
            c2423.f9361.when = System.currentTimeMillis();
            c2423.f9364 = pendingIntent;
            c2423.f9370 = C2423.m5528(m7719);
        }
        if (AbstractC4278.m8657()) {
            if (!AbstractC4278.m8657()) {
                throw new IllegalStateException();
            }
            synchronized (f15205) {
            }
            NotificationChannel notificationChannel = notificationManager.getNotificationChannel("com.google.android.gms.availability");
            String string = context.getResources().getString(ar.tvplayer.tv.R.string.38i);
            if (notificationChannel == null) {
                notificationManager.createNotificationChannel(new NotificationChannel("com.google.android.gms.availability", string, 4));
            } else if (!string.contentEquals(notificationChannel.getName())) {
                notificationChannel.setName(string);
                notificationManager.createNotificationChannel(notificationChannel);
            }
            c2423.f9360 = "com.google.android.gms.availability";
        }
        Notification m5530 = c2423.m5530();
        if (i == 1 || i == 2 || i == 3) {
            AbstractC3932.f15212.set(false);
            i2 = 10436;
        } else {
            i2 = 39789;
        }
        notificationManager.notify(i2, m5530);
    }
}
