package p360;

import android.content.Context;
import j$.util.DesugarCollections;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.concurrent.Callable;

/* renamed from: ᵔٴ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class CallableC4367 implements Callable {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final /* synthetic */ Context f16212;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final /* synthetic */ int f16213;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final /* synthetic */ Object f16214;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ String f16215;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f16216;

    public /* synthetic */ CallableC4367(String str, Context context, Object obj, int i, int i2) {
        this.f16216 = i2;
        this.f16215 = str;
        this.f16212 = context;
        this.f16214 = obj;
        this.f16213 = i;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        int i = this.f16216;
        int i2 = this.f16213;
        Object obj = this.f16214;
        Context context = this.f16212;
        String str = this.f16215;
        switch (i) {
            case 0:
                Object[] objArr = {(C4366) obj};
                ArrayList arrayList = new ArrayList(1);
                Object obj2 = objArr[0];
                Objects.requireNonNull(obj2);
                arrayList.add(obj2);
                return AbstractC4368.m8841(str, context, DesugarCollections.unmodifiableList(arrayList), i2);
            default:
                try {
                    return AbstractC4368.m8841(str, context, (ArrayList) obj, i2);
                } catch (Throwable unused) {
                    return new C4372(-3);
                }
        }
    }
}
