.class public abstract Lˏʻ/ᵔᵢ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʼˎ:I

.field public ʽ:Lˊﾞ/ᵔﹳ;

.field public ˆʾ:Lﹶﾞ/ⁱי;

.field public ˈ:Lˏʻ/ﾞᴵ;

.field public ˉʿ:Z

.field public ˑﹳ:J

.field public ٴﹶ:J

.field public ᵎﹶ:J

.field public ᵔᵢ:I

.field public ⁱˊ:Lˊﾞ/ٴᵢ;

.field public final ﹳٴ:Lˏʻ/ˑﹳ;

.field public ﾞʻ:Z

.field public ﾞᴵ:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lˏʻ/ˑﹳ;

    invoke-direct {v0}, Lˏʻ/ˑﹳ;-><init>()V

    iput-object v0, p0, Lˏʻ/ᵔᵢ;->ﹳٴ:Lˏʻ/ˑﹳ;

    new-instance v0, Lﹶﾞ/ⁱי;

    const/16 v1, 0x1c

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lﹶﾞ/ⁱי;-><init>(IZ)V

    iput-object v0, p0, Lˏʻ/ᵔᵢ;->ˆʾ:Lﹶﾞ/ⁱי;

    return-void
.end method


# virtual methods
.method public abstract ʽ(Lᐧˎ/ﹳᐧ;JLﹶﾞ/ⁱי;)Z
.end method

.method public ˈ(Z)V
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    new-instance p1, Lﹶﾞ/ⁱי;

    const/16 v2, 0x1c

    const/4 v3, 0x0

    invoke-direct {p1, v2, v3}, Lﹶﾞ/ⁱי;-><init>(IZ)V

    iput-object p1, p0, Lˏʻ/ᵔᵢ;->ˆʾ:Lﹶﾞ/ⁱי;

    iput-wide v0, p0, Lˏʻ/ᵔᵢ;->ﾞᴵ:J

    const/4 p1, 0x0

    iput p1, p0, Lˏʻ/ᵔᵢ;->ᵔᵢ:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput p1, p0, Lˏʻ/ᵔᵢ;->ᵔᵢ:I

    :goto_0
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lˏʻ/ᵔᵢ;->ˑﹳ:J

    iput-wide v0, p0, Lˏʻ/ᵔᵢ;->ᵎﹶ:J

    return-void
.end method

.method public abstract ⁱˊ(Lᐧˎ/ﹳᐧ;)J
.end method

.method public ﹳٴ(J)V
    .locals 0

    iput-wide p1, p0, Lˏʻ/ᵔᵢ;->ᵎﹶ:J

    return-void
.end method
