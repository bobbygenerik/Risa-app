package p076;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Icon;
import android.hardware.display.DisplayManager;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.os.Build;
import android.os.Looper;
import android.view.Display;
import android.view.MenuItem;
import android.widget.TextView;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import p003.RunnableC0786;
import p305.AbstractC3731;
import p305.C3722;

/* renamed from: ʾﾞ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC1659 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static AudioManager f6741;

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static void m4531(TextView textView) {
        textView.setAutofillHints(null);
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static boolean m4532(Context context) {
        DisplayManager displayManager = (DisplayManager) context.getSystemService("display");
        Display display = displayManager != null ? displayManager.getDisplay(0) : null;
        if (display != null && display.isHdr()) {
            for (int i : display.getHdrCapabilities().getSupportedHdrTypes()) {
                if (i == 1) {
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static void m4533(MenuItem menuItem, CharSequence charSequence) {
        menuItem.setContentDescription(charSequence);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static synchronized AudioManager m4534(Context context) {
        synchronized (AbstractC1659.class) {
            try {
                Context applicationContext = context.getApplicationContext();
                if (applicationContext != null) {
                    f6741 = null;
                }
                AudioManager audioManager = f6741;
                if (audioManager != null) {
                    return audioManager;
                }
                Looper myLooper = Looper.myLooper();
                if (myLooper != null && myLooper != Looper.getMainLooper()) {
                    C3722 c3722 = new C3722();
                    AbstractC3731.m7867().execute(new RunnableC0786(applicationContext, 9, c3722));
                    c3722.m7824();
                    AudioManager audioManager2 = f6741;
                    audioManager2.getClass();
                    return audioManager2;
                }
                AudioManager audioManager3 = (AudioManager) applicationContext.getSystemService("audio");
                f6741 = audioManager3;
                audioManager3.getClass();
                return audioManager3;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public static void m4535(TextView textView) {
        textView.setImportantForAutofill(2);
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public static void m4536(MenuItem menuItem, CharSequence charSequence) {
        menuItem.setTooltipText(charSequence);
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static boolean m4537(File file, File file2) {
        try {
            Files.move(file.toPath(), file2.toPath(), StandardCopyOption.REPLACE_EXISTING);
            return true;
        } catch (IOException unused) {
            return false;
        }
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public static void m4538(MenuItem menuItem, ColorStateList colorStateList) {
        menuItem.setIconTintList(colorStateList);
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static int m4539(AudioManager audioManager, C1658 c1658) {
        if (Build.VERSION.SDK_INT >= 26) {
            Object obj = c1658.f6740;
            obj.getClass();
            return audioManager.requestAudioFocus((AudioFocusRequest) obj);
        }
        AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener = c1658.f6738;
        c1658.f6736.getClass();
        return audioManager.requestAudioFocus(onAudioFocusChangeListener, 3, c1658.f6739);
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public static void m4540(MenuItem menuItem, char c, int i) {
        menuItem.setNumericShortcut(c, i);
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static void m4541(MenuItem menuItem, char c, int i) {
        menuItem.setAlphabeticShortcut(c, i);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static Icon m4542(Bitmap bitmap) {
        return Icon.createWithAdaptiveBitmap(bitmap);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static void m4543(AudioManager audioManager, C1658 c1658) {
        if (Build.VERSION.SDK_INT < 26) {
            audioManager.abandonAudioFocus(c1658.f6738);
            return;
        }
        Object obj = c1658.f6740;
        obj.getClass();
        audioManager.abandonAudioFocusRequest((AudioFocusRequest) obj);
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public static void m4544(MenuItem menuItem, PorterDuff.Mode mode) {
        menuItem.setIconTintMode(mode);
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static Intent m4545(Context context, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter, int i) {
        return context.registerReceiver(broadcastReceiver, intentFilter, null, null, i);
    }
}
