package androidx.media3.datasource;

import java.io.IOException;

/* loaded from: classes.dex */
public class DataSourceException extends IOException {

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static final /* synthetic */ int f1138 = 0;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final int f1139;

    public DataSourceException(int i) {
        this.f1139 = i;
    }

    public DataSourceException(int i, String str) {
        super(str);
        this.f1139 = i;
    }

    public DataSourceException(Exception exc, int i) {
        super(exc);
        this.f1139 = i;
    }

    public DataSourceException(String str, Exception exc, int i) {
        super(str, exc);
        this.f1139 = i;
    }
}
