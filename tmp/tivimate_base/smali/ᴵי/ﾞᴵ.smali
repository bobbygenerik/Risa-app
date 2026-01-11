.class public final Lᴵי/ﾞᴵ;
.super Lᴵי/ﹳٴ;
.source "SourceFile"


# instance fields
.field public final ˈٴ:Ljava/lang/Thread;

.field public final ᴵᵔ:Lᴵי/ˑٴ;


# direct methods
.method public constructor <init>(Lˈי/ᵔᵢ;Ljava/lang/Thread;Lᴵי/ˑٴ;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Lᴵי/ﹳٴ;-><init>(Lˈי/ᵔᵢ;ZZ)V

    iput-object p2, p0, Lᴵי/ﾞᴵ;->ˈٴ:Ljava/lang/Thread;

    iput-object p3, p0, Lᴵי/ﾞᴵ;->ᴵᵔ:Lᴵי/ˑٴ;

    return-void
.end method


# virtual methods
.method public final ˑﹳ(Ljava/lang/Object;)V
    .locals 1

    .prologue
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object v0, p0, Lᴵי/ﾞᴵ;->ˈٴ:Ljava/lang/Thread;

    invoke-static {p1, v0}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_0
    return-void
.end method
