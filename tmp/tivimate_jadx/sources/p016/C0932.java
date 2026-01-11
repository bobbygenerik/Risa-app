package p016;

import java.util.concurrent.CopyOnWriteArraySet;
import java.util.logging.Handler;
import java.util.logging.Level;
import java.util.logging.LogRecord;

/* renamed from: ʼ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0932 extends Handler {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C0932 f3852 = new Handler();

    @Override // java.util.logging.Handler
    public final void close() {
    }

    @Override // java.util.logging.Handler
    public final void flush() {
    }

    @Override // java.util.logging.Handler
    public final void publish(LogRecord logRecord) {
        CopyOnWriteArraySet copyOnWriteArraySet = AbstractC0930.f3851;
        String loggerName = logRecord.getLoggerName();
        int intValue = logRecord.getLevel().intValue();
        Level level = Level.INFO;
        AbstractC0930.m3197(loggerName, intValue > level.intValue() ? 5 : logRecord.getLevel().intValue() == level.intValue() ? 4 : 3, logRecord.getMessage(), logRecord.getThrown());
    }
}
