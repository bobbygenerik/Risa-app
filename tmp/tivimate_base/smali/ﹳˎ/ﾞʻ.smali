.class public final Lﹳˎ/ﾞʻ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic ⁱˊ:Lﹳˎ/ˉʿ;

.field public final synthetic ﹳٴ:J


# direct methods
.method public constructor <init>(Lﹳˎ/ˉʿ;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹳˎ/ﾞʻ;->ⁱˊ:Lﹳˎ/ˉʿ;

    iput-wide p2, p0, Lﹳˎ/ﾞʻ;->ﹳٴ:J

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "fatal"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "timestamp"

    iget-wide v2, p0, Lﹳˎ/ﾞʻ;->ﹳٴ:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object v1, p0, Lﹳˎ/ﾞʻ;->ⁱˊ:Lﹳˎ/ˉʿ;

    iget-object v1, v1, Lﹳˎ/ˉʿ;->ٴﹶ:Lˎ/ﹳٴ;

    invoke-interface {v1, v0}, Lˎ/ﹳٴ;->ˊʻ(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    return-object v0
.end method
