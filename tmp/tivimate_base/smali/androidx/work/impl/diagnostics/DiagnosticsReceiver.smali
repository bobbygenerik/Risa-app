.class public Landroidx/work/impl/diagnostics/DiagnosticsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static final ﹳٴ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "DiagnosticsRcvr"

    invoke-static {v0}, Lᴵˋ/ˏי;->ᵎﹶ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/diagnostics/DiagnosticsReceiver;->ﹳٴ:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .prologue
    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object p2

    const-string v0, "Requesting diagnostics"

    sget-object v1, Landroidx/work/impl/diagnostics/DiagnosticsReceiver;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {p2, v1, v0}, Lᴵˋ/ˏי;->ﹳٴ(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1}, Lـʾ/ﹳᐧ;->ﹳـ(Landroid/content/Context;)Lـʾ/ﹳᐧ;

    move-result-object v3

    const-class p1, Landroidx/work/impl/workers/DiagnosticsWorker;

    new-instance p2, Lᴵˋ/ʽﹳ;

    invoke-direct {p2, p1}, Lᴵˋ/ٴᵢ;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p2}, Lᴵˋ/ٴᵢ;->ﹳٴ()Lᴵˋ/ˉٴ;

    move-result-object p1

    check-cast p1, Lᴵˋ/ʻٴ;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    new-instance v2, Lـʾ/ﾞʻ;

    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v2 .. v7}, Lـʾ/ﾞʻ;-><init>(Lـʾ/ﹳᐧ;Ljava/lang/String;ILjava/util/List;I)V

    invoke-virtual {v2}, Lـʾ/ﾞʻ;->ᵎˊ()Lᴵˋ/ˆʾ;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "enqueue needs at least one WorkRequest."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    move-object p1, v0

    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object p2

    const-string v0, "WorkManager is not initialized"

    invoke-virtual {p2, v1, v0, p1}, Lᴵˋ/ˏי;->ˈ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
