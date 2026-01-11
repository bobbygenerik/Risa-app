.class public final Lﹳˎ/יـ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field public final ʽ:Ljava/lang/Thread$UncaughtExceptionHandler;

.field public final ˈ:Lיˎ/ⁱˊ;

.field public final ˑﹳ:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final ⁱˊ:Lʾٴ/ⁱˊ;

.field public final ﹳٴ:Lᐧﹳ/ʽ;


# direct methods
.method public constructor <init>(Lᐧﹳ/ʽ;Lʾٴ/ⁱˊ;Ljava/lang/Thread$UncaughtExceptionHandler;Lיˎ/ⁱˊ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹳˎ/יـ;->ﹳٴ:Lᐧﹳ/ʽ;

    iput-object p2, p0, Lﹳˎ/יـ;->ⁱˊ:Lʾٴ/ⁱˊ;

    iput-object p3, p0, Lﹳˎ/יـ;->ʽ:Ljava/lang/Thread$UncaughtExceptionHandler;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lﹳˎ/יـ;->ˑﹳ:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p4, p0, Lﹳˎ/יـ;->ˈ:Lיˎ/ⁱˊ;

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 13

    .prologue
    const-string v0, "Completed exception processing, but no default exception handler."

    const-string v1, "Completed exception processing. Invoking default exception handler."

    iget-object v2, p0, Lﹳˎ/יـ;->ʽ:Ljava/lang/Thread$UncaughtExceptionHandler;

    const-string v3, "FirebaseCrashlytics"

    iget-object v4, p0, Lﹳˎ/יـ;->ˑﹳ:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lﹳˎ/יـ;->ﹳٴ(Ljava/lang/Thread;Ljava/lang/Throwable;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lﹳˎ/יـ;->ﹳٴ:Lᐧﹳ/ʽ;

    iget-object v10, p0, Lﹳˎ/יـ;->ⁱˊ:Lʾٴ/ⁱˊ;

    invoke-virtual {v9, v10, p1, p2}, Lᐧﹳ/ʽ;->ʻٴ(Lʾٴ/ⁱˊ;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v9

    goto :goto_4

    :catch_0
    move-exception v9

    goto :goto_2

    :cond_0
    const-string v9, "Uncaught exception will not be recorded by Crashlytics."

    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_1

    nop
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    nop

    :cond_2
    invoke-interface {v2, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_4

    nop

    :cond_4
    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    :goto_1
    invoke-virtual {v4, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :goto_2
    :try_start_1
    sget-object v10, Lיˎ/ʽ;->ﹳٴ:Lיˎ/ʽ;

    const-string v11, "An error occurred in the uncaught exception handler"

    const/4 v12, 0x6

    invoke-virtual {v10, v12}, Lיˎ/ʽ;->ﹳٴ(I)Z

    move-result v12

    if-eqz v12, :cond_5

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v10, v1}, Lיˎ/ʽ;->ⁱˊ(Ljava/lang/String;)V

    invoke-interface {v2, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    invoke-virtual {v10, v0}, Lיˎ/ʽ;->ⁱˊ(Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    :goto_3
    invoke-virtual {v4, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :goto_4
    if-eqz v2, :cond_8

    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7

    nop

    :cond_7
    invoke-interface {v2, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_8
    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_9

    nop

    :cond_9
    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    :goto_5
    invoke-virtual {v4, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v9
.end method

.method public final ﹳٴ(Ljava/lang/Thread;Ljava/lang/Throwable;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "FirebaseCrashlytics"

    if-nez p1, :cond_0

    const-string p1, "Crashlytics will not record uncaught exception; null thread"

    nop

    return v1

    :cond_0
    if-nez p2, :cond_1

    const-string p1, "Crashlytics will not record uncaught exception; null throwable"

    nop

    return v1

    :cond_1
    iget-object p1, p0, Lﹳˎ/יـ;->ˈ:Lיˎ/ⁱˊ;

    invoke-virtual {p1}, Lיˎ/ⁱˊ;->ⁱˊ()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x3

    invoke-static {v2, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Crashlytics will not record uncaught exception; native crash exists for session."

    nop

    :cond_2
    return v1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method
