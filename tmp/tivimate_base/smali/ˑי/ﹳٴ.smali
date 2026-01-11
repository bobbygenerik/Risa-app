.class public final Lˑי/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static ⁱˊ:Lˑי/ﹳٴ;


# instance fields
.field public ﹳٴ:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lˑי/ﹳٴ;->ﹳٴ:Ljava/lang/Object;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lٴﾞ/ᴵᵔ;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p0}, Lٴﾞ/ᴵᵔ;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-void
.end method


# virtual methods
.method public ﹳٴ()V
    .locals 2

    .prologue
    iget-object v0, p0, Lˑי/ﹳٴ;->ﹳٴ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
