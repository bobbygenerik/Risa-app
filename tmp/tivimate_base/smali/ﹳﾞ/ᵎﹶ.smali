.class public final Lﹳﾞ/ᵎﹶ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʼﹶ/ˈ;


# instance fields
.field public final ʽʽ:Lʻᴵ/ﾞᴵ;

.field public final ʾˋ:Landroid/content/Context;

.field public final ˈٴ:Z

.field public final ˊʻ:Lʻᵢ/ʼˎ;

.field public ٴᵢ:Z

.field public final ᴵˊ:Ljava/lang/String;

.field public final ᴵᵔ:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lʻᴵ/ﾞᴵ;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹳﾞ/ᵎﹶ;->ʾˋ:Landroid/content/Context;

    iput-object p2, p0, Lﹳﾞ/ᵎﹶ;->ᴵˊ:Ljava/lang/String;

    iput-object p3, p0, Lﹳﾞ/ᵎﹶ;->ʽʽ:Lʻᴵ/ﾞᴵ;

    iput-boolean p4, p0, Lﹳﾞ/ᵎﹶ;->ˈٴ:Z

    iput-boolean p5, p0, Lﹳﾞ/ᵎﹶ;->ᴵᵔ:Z

    new-instance p1, Lᵔʻ/ﹳـ;

    const/16 p2, 0x15

    invoke-direct {p1, p2, p0}, Lᵔʻ/ﹳـ;-><init>(ILjava/lang/Object;)V

    new-instance p2, Lʻᵢ/ʼˎ;

    invoke-direct {p2, p1}, Lʻᵢ/ʼˎ;-><init>(Lᴵⁱ/ﹳٴ;)V

    iput-object p2, p0, Lﹳﾞ/ᵎﹶ;->ˊʻ:Lʻᵢ/ʼˎ;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .prologue
    iget-object v0, p0, Lﹳﾞ/ᵎﹶ;->ˊʻ:Lʻᵢ/ʼˎ;

    invoke-virtual {v0}, Lʻᵢ/ʼˎ;->ﹳٴ()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lʻᵢ/ʼˎ;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lﹳﾞ/ﾞᴵ;

    invoke-virtual {v0}, Lﹳﾞ/ﾞᴵ;->close()V

    :cond_0
    return-void
.end method

.method public final getDatabaseName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lﹳﾞ/ᵎﹶ;->ᴵˊ:Ljava/lang/String;

    return-object v0
.end method

.method public final setWriteAheadLoggingEnabled(Z)V
    .locals 2

    .prologue
    iget-object v0, p0, Lﹳﾞ/ᵎﹶ;->ˊʻ:Lʻᵢ/ʼˎ;

    invoke-virtual {v0}, Lʻᵢ/ʼˎ;->ﹳٴ()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lʻᵢ/ʼˎ;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lﹳﾞ/ﾞᴵ;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    :cond_0
    iput-boolean p1, p0, Lﹳﾞ/ᵎﹶ;->ٴᵢ:Z

    return-void
.end method

.method public final ʻᵎ()Lʼﹶ/ﹳٴ;
    .locals 2

    iget-object v0, p0, Lﹳﾞ/ᵎﹶ;->ˊʻ:Lʻᵢ/ʼˎ;

    invoke-virtual {v0}, Lʻᵢ/ʼˎ;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lﹳﾞ/ﾞᴵ;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lﹳﾞ/ﾞᴵ;->ʽ(Z)Lʼﹶ/ﹳٴ;

    move-result-object v0

    return-object v0
.end method
