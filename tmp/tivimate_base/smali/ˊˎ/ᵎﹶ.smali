.class public abstract Lˊˎ/ᵎﹶ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lﹳᴵ/ʽ;


# instance fields
.field public ʽʽ:Z

.field public final ʾˋ:Lʼﹶ/ﹳٴ;

.field public final ᴵˊ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lʼﹶ/ﹳٴ;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˊˎ/ᵎﹶ;->ʾˋ:Lʼﹶ/ﹳٴ;

    iput-object p2, p0, Lˊˎ/ᵎﹶ;->ᴵˊ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final ʼˈ()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final ʽ()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lˊˎ/ᵎﹶ;->ʽʽ:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x15

    const-string v1, "statement is closed"

    invoke-static {v0, v1}, Landroid/support/v4/media/session/ⁱˊ;->ʻٴ(ILjava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
