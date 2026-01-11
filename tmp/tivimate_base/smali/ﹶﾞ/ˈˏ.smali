.class public final Lﹶﾞ/ˈˏ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field public final synthetic ⁱˊ:Lﹶﾞ/ʻˋ;

.field public final ﹳٴ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lﹶﾞ/ʻˋ;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹶﾞ/ˈˏ;->ⁱˊ:Lﹶﾞ/ʻˋ;

    iput-object p2, p0, Lﹶﾞ/ˈˏ;->ﹳٴ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final declared-synchronized uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lﹶﾞ/ˈˏ;->ⁱˊ:Lﹶﾞ/ʻˋ;

    iget-object p1, p1, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast p1, Lﹶﾞ/ᵎʻ;

    iget-object p1, p1, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {p1}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object p1, p1, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    iget-object v0, p0, Lﹶﾞ/ˈˏ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
