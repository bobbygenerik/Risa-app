.class public final Lᐧˎ/ʼᐧ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic ʽ:Lᐧˎ/ᵔﹳ;

.field public final ⁱˊ:Ljava/util/concurrent/Executor;

.field public final ﹳٴ:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lᐧˎ/ᵔﹳ;Lᵔⁱ/ﾞᴵ;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᐧˎ/ʼᐧ;->ʽ:Lᐧˎ/ᵔﹳ;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lᐧˎ/ʼᐧ;->ﹳٴ:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lᐧˎ/ʼᐧ;->ⁱˊ:Ljava/util/concurrent/Executor;

    return-void
.end method
