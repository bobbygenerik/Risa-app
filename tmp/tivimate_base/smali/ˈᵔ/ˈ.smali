.class public final Lˈᵔ/ˈ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:Lˈᵔ/ʽ;

.field public final ⁱˊ:Lˈᵔ/ʽ;

.field public final ﹳٴ:Lˈᵔ/ʽ;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lˈᵔ/ʽ;

    invoke-direct {v0, p1}, Lˈᵔ/ʽ;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lˈᵔ/ˈ;->ﹳٴ:Lˈᵔ/ʽ;

    new-instance v0, Lˈᵔ/ʽ;

    invoke-direct {v0, p1}, Lˈᵔ/ʽ;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lˈᵔ/ˈ;->ⁱˊ:Lˈᵔ/ʽ;

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/ᵎ;->ᵔᵢ(Ljava/lang/Object;)Lˏـ/ˉʿ;

    new-instance p1, Lˈᵔ/ʽ;

    invoke-direct {p1, p2}, Lˈᵔ/ʽ;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object p1, p0, Lˈᵔ/ˈ;->ʽ:Lˈᵔ/ʽ;

    return-void
.end method

.method public static final ⁱˊ()V
    .locals 3

    .prologue
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Firebase Blocking Thread #"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lﹶˑ/ˆʾ;->ˏᵢ(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Must be called on a blocking thread, was called on "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "FirebaseCrashlytics"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    nop

    :cond_0
    return-void
.end method

.method public static final ﹳٴ()V
    .locals 3

    .prologue
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Firebase Background Thread #"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lﹶˑ/ˆʾ;->ˏᵢ(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Must be called on a background thread, was called on "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "FirebaseCrashlytics"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    nop

    :cond_0
    return-void
.end method
