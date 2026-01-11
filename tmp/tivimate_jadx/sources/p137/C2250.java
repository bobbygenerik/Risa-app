package p137;

import android.R;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Shader;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.util.AttributeSet;
import android.view.View;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.AbsSeekBar;
import android.widget.EditText;
import com.parse.ٴʼ;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import p262.C3433;
import p275.C3508;
import p278.AbstractC3538;
import p278.InterfaceC3539;
import p350.AbstractC4295;
import p384.C4603;
import p439.C5187;
import p439.C5189;
import p439.C5190;
import ˈˊ.ˉˆ;

/* renamed from: ˉˆ.ʾˋ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C2250 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final int[] f8821 = {R.attr.indeterminateDrawable, R.attr.progressDrawable};

    /* renamed from: ʽ, reason: contains not printable characters */
    public Object f8822;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public View f8823;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f8824 = 2;

    public /* synthetic */ C2250() {
    }

    public C2250(AbsSeekBar absSeekBar) {
        this.f8823 = absSeekBar;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [ⁱʽ.ﹳٴ, java.lang.Object] */
    public C2250(EditText editText) {
        this.f8823 = editText;
        ?? obj = new Object();
        obj.f17126 = new C3433(editText);
        this.f8822 = obj;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public C5190 m5263(InputConnection inputConnection, EditorInfo editorInfo) {
        C4603 c4603 = (C4603) this.f8822;
        if (inputConnection == null) {
            c4603.getClass();
            inputConnection = null;
        } else {
            C3433 c3433 = (C3433) c4603.f17126;
            c3433.getClass();
            if (!(inputConnection instanceof C5190)) {
                inputConnection = new C5190((EditText) c3433.f13458, inputConnection, editorInfo);
            }
        }
        return (C5190) inputConnection;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public void m5264(boolean z) {
        C5189 c5189 = (C5189) ((C3433) ((C4603) this.f8822).f17126).f13456;
        if (c5189.f19504 != z) {
            if (c5189.f19506 != null) {
                C3508 m7473 = C3508.m7473();
                C2289 c2289 = c5189.f19506;
                m7473.getClass();
                ˉˆ.ﾞᴵ(c2289, "initCallback cannot be null");
                ReentrantReadWriteLock reentrantReadWriteLock = m7473.f13834;
                reentrantReadWriteLock.writeLock().lock();
                try {
                    m7473.f13833.remove(c2289);
                } finally {
                    reentrantReadWriteLock.writeLock().unlock();
                }
            }
            c5189.f19504 = z;
            if (z) {
                C5189.m10165(c5189.f19505, C3508.m7473().m7477());
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public Drawable m5265(Drawable drawable, boolean z) {
        if (drawable instanceof InterfaceC3539) {
            ((AbstractC3538) ((InterfaceC3539) drawable)).getClass();
        } else {
            if (drawable instanceof LayerDrawable) {
                LayerDrawable layerDrawable = (LayerDrawable) drawable;
                int numberOfLayers = layerDrawable.getNumberOfLayers();
                Drawable[] drawableArr = new Drawable[numberOfLayers];
                for (int i = 0; i < numberOfLayers; i++) {
                    int id = layerDrawable.getId(i);
                    drawableArr[i] = m5265(layerDrawable.getDrawable(i), id == 16908301 || id == 16908303);
                }
                LayerDrawable layerDrawable2 = new LayerDrawable(drawableArr);
                for (int i2 = 0; i2 < numberOfLayers; i2++) {
                    layerDrawable2.setId(i2, layerDrawable.getId(i2));
                    layerDrawable2.setLayerGravity(i2, layerDrawable.getLayerGravity(i2));
                    layerDrawable2.setLayerWidth(i2, layerDrawable.getLayerWidth(i2));
                    layerDrawable2.setLayerHeight(i2, layerDrawable.getLayerHeight(i2));
                    layerDrawable2.setLayerInsetLeft(i2, layerDrawable.getLayerInsetLeft(i2));
                    layerDrawable2.setLayerInsetRight(i2, layerDrawable.getLayerInsetRight(i2));
                    layerDrawable2.setLayerInsetTop(i2, layerDrawable.getLayerInsetTop(i2));
                    layerDrawable2.setLayerInsetBottom(i2, layerDrawable.getLayerInsetBottom(i2));
                    layerDrawable2.setLayerInsetStart(i2, layerDrawable.getLayerInsetStart(i2));
                    layerDrawable2.setLayerInsetEnd(i2, layerDrawable.getLayerInsetEnd(i2));
                }
                return layerDrawable2;
            }
            if (drawable instanceof BitmapDrawable) {
                BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
                Bitmap bitmap = bitmapDrawable.getBitmap();
                if (((Bitmap) this.f8822) == null) {
                    this.f8822 = bitmap;
                }
                ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(new float[]{5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f}, null, null));
                shapeDrawable.getPaint().setShader(new BitmapShader(bitmap, Shader.TileMode.REPEAT, Shader.TileMode.CLAMP));
                shapeDrawable.getPaint().setColorFilter(bitmapDrawable.getPaint().getColorFilter());
                return z ? new ClipDrawable(shapeDrawable, 3, 1) : shapeDrawable;
            }
        }
        return drawable;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public void mo5266(AttributeSet attributeSet, int i) {
        switch (this.f8824) {
            case 0:
                AbsSeekBar absSeekBar = (AbsSeekBar) this.f8823;
                ٴʼ r9 = ٴʼ.ʿᵢ(i, 0, absSeekBar.getContext(), attributeSet, f8821);
                Drawable drawable = r9.ˋᵔ(0);
                if (drawable != null) {
                    if (drawable instanceof AnimationDrawable) {
                        AnimationDrawable animationDrawable = (AnimationDrawable) drawable;
                        int numberOfFrames = animationDrawable.getNumberOfFrames();
                        AnimationDrawable animationDrawable2 = new AnimationDrawable();
                        animationDrawable2.setOneShot(animationDrawable.isOneShot());
                        for (int i2 = 0; i2 < numberOfFrames; i2++) {
                            Drawable m5265 = m5265(animationDrawable.getFrame(i2), true);
                            m5265.setLevel(10000);
                            animationDrawable2.addFrame(m5265, animationDrawable.getDuration(i2));
                        }
                        animationDrawable2.setLevel(10000);
                        drawable = animationDrawable2;
                    }
                    absSeekBar.setIndeterminateDrawable(drawable);
                }
                Drawable drawable2 = r9.ˋᵔ(1);
                if (drawable2 != null) {
                    absSeekBar.setProgressDrawable(m5265(drawable2, false));
                }
                r9.ᐧᴵ();
                return;
            default:
                TypedArray obtainStyledAttributes = ((EditText) this.f8823).getContext().obtainStyledAttributes(attributeSet, AbstractC4295.f15900, i, 0);
                try {
                    boolean z = obtainStyledAttributes.hasValue(14) ? obtainStyledAttributes.getBoolean(14, true) : true;
                    obtainStyledAttributes.recycle();
                    m5264(z);
                    return;
                } catch (Throwable th) {
                    obtainStyledAttributes.recycle();
                    throw th;
                }
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public KeyListener m5267(KeyListener keyListener) {
        if (keyListener instanceof NumberKeyListener) {
            return keyListener;
        }
        ((C3433) ((C4603) this.f8822).f17126).getClass();
        if (keyListener instanceof C5187) {
            return keyListener;
        }
        if (keyListener == null) {
            return null;
        }
        return keyListener instanceof NumberKeyListener ? keyListener : new C5187(keyListener);
    }
}
