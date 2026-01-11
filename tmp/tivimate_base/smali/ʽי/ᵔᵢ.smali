.class public final Lʽי/ᵔᵢ;
.super Lˎᵢ/ᴵᵔ;
.source "SourceFile"


# instance fields
.field public final ʽʽ:J

.field public final ˈٴ:Lˊᐧ/ـˆ;

.field public final ᴵˊ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLˊᐧ/ـˆ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʽי/ᵔᵢ;->ᴵˊ:Ljava/lang/String;

    iput-wide p2, p0, Lʽי/ᵔᵢ;->ʽʽ:J

    iput-object p4, p0, Lʽי/ᵔᵢ;->ˈٴ:Lˊᐧ/ـˆ;

    return-void
.end method


# virtual methods
.method public final ʽ()J
    .locals 2

    iget-wide v0, p0, Lʽי/ᵔᵢ;->ʽʽ:J

    return-wide v0
.end method

.method public final ˉˆ()Lˊᐧ/ᵔᵢ;
    .locals 1

    iget-object v0, p0, Lʽי/ᵔᵢ;->ˈٴ:Lˊᐧ/ـˆ;

    return-object v0
.end method

.method public final ᵎﹶ()Lˎᵢ/ﹳᐧ;
    .locals 3

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Lʽי/ᵔᵢ;->ᴵˊ:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v2, Lˎᵢ/ﹳᐧ;->ˈ:Lﹶˑ/ʼˎ;

    :try_start_0
    invoke-static {v1}, Lˈˊ/ᵔʾ;->ﾞʻ(Ljava/lang/String;)Lˎᵢ/ﹳᐧ;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method
