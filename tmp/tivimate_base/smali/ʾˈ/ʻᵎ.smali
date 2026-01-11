.class public final synthetic Lʾˈ/ʻᵎ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lﹶٴ/ˑﹳ;


# static fields
.field private static final descriptor:Lˉﾞ/ˈ;

.field public static final ﹳٴ:Lʾˈ/ʻᵎ;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lʾˈ/ʻᵎ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lʾˈ/ʻᵎ;->ﹳٴ:Lʾˈ/ʻᵎ;

    new-instance v1, Lﹶٴ/ˉʿ;

    const-string v2, "com.google.firebase.sessions.Time"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v0, v3}, Lﹶٴ/ˉʿ;-><init>(Ljava/lang/String;Lﹶٴ/ˑﹳ;I)V

    const-string v0, "ms"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lﹶٴ/ˉʿ;->ٴﹶ(Ljava/lang/String;Z)V

    const-string v0, "us"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lﹶٴ/ˉʿ;->ٴﹶ(Ljava/lang/String;Z)V

    const-string v0, "seconds"

    invoke-virtual {v1, v0, v2}, Lﹶٴ/ˉʿ;->ٴﹶ(Ljava/lang/String;Z)V

    sput-object v1, Lʾˈ/ʻᵎ;->descriptor:Lˉﾞ/ˈ;

    return-void
.end method


# virtual methods
.method public final ʽ(Lcom/parse/ʽˑ;)Ljava/lang/Object;
    .locals 13

    .prologue
    sget-object v0, Lʾˈ/ʻᵎ;->descriptor:Lˉﾞ/ˈ;

    invoke-virtual {p1, v0}, Lcom/parse/ʽˑ;->ᵎﹶ(Lˉﾞ/ˈ;)Lcom/parse/ʽˑ;

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move v6, v2

    move-wide v7, v3

    move-wide v9, v7

    move-wide v11, v9

    move v3, v1

    :goto_0
    if-eqz v3, :cond_4

    invoke-virtual {p1, v0}, Lcom/parse/ʽˑ;->ˉˆ(Lˉﾞ/ˈ;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    if-eqz v4, :cond_2

    if-eq v4, v1, :cond_1

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    invoke-virtual {p1, v0, v5}, Lcom/parse/ʽˑ;->יـ(Lˉﾞ/ˈ;I)J

    move-result-wide v11

    or-int/lit8 v6, v6, 0x4

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlinx/serialization/UnknownFieldException;

    invoke-direct {p1, v4}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    throw p1

    :cond_1
    invoke-virtual {p1, v0, v1}, Lcom/parse/ʽˑ;->יـ(Lˉﾞ/ˈ;I)J

    move-result-wide v9

    or-int/lit8 v6, v6, 0x2

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v0, v2}, Lcom/parse/ʽˑ;->יـ(Lˉﾞ/ˈ;I)J

    move-result-wide v7

    or-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    move v3, v2

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v0}, Lcom/parse/ʽˑ;->ʾˋ(Lˉﾞ/ˈ;)V

    new-instance v5, Lʾˈ/ـﹶ;

    invoke-direct/range {v5 .. v12}, Lʾˈ/ـﹶ;-><init>(IJJJ)V

    return-object v5
.end method

.method public final ˈ()Lˉﾞ/ˈ;
    .locals 1

    sget-object v0, Lʾˈ/ʻᵎ;->descriptor:Lˉﾞ/ˈ;

    return-object v0
.end method

.method public final ⁱˊ()[Lיʼ/ﹳٴ;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lיʼ/ﹳٴ;

    sget-object v1, Lﹶٴ/ʼˎ;->ﹳٴ:Lﹶٴ/ʼˎ;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public final ﹳٴ(Lʻʻ/ʽ;Ljava/lang/Object;)V
    .locals 10

    .prologue
    check-cast p2, Lʾˈ/ـﹶ;

    sget-object v0, Lʾˈ/ʻᵎ;->descriptor:Lˉﾞ/ˈ;

    invoke-virtual {p1, v0}, Lʻʻ/ʽ;->ﹳٴ(Lˉﾞ/ˈ;)Lʻʻ/ʽ;

    move-result-object p1

    iget-wide v1, p2, Lʾˈ/ـﹶ;->ﹳٴ:J

    iget-wide v3, p2, Lʾˈ/ـﹶ;->ʽ:J

    iget-wide v5, p2, Lʾˈ/ـﹶ;->ⁱˊ:J

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2}, Lʻʻ/ʽ;->ⁱˊ(Lˉﾞ/ˈ;I)V

    invoke-virtual {p1, v1, v2}, Lʻʻ/ʽ;->ˈ(J)V

    invoke-virtual {p1}, Lʻʻ/ʽ;->ᵔʾ()Z

    move-result p2

    const/16 v7, 0x3e8

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    int-to-long v8, v7

    mul-long/2addr v8, v1

    cmp-long p2, v5, v8

    if-eqz p2, :cond_1

    :goto_0
    const/4 p2, 0x1

    invoke-virtual {p1, v0, p2}, Lʻʻ/ʽ;->ⁱˊ(Lˉﾞ/ˈ;I)V

    invoke-virtual {p1, v5, v6}, Lʻʻ/ʽ;->ˈ(J)V

    :cond_1
    invoke-virtual {p1}, Lʻʻ/ʽ;->ᵔʾ()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    int-to-long v5, v7

    div-long/2addr v1, v5

    cmp-long p2, v3, v1

    if-eqz p2, :cond_3

    :goto_1
    const/4 p2, 0x2

    invoke-virtual {p1, v0, p2}, Lʻʻ/ʽ;->ⁱˊ(Lˉﾞ/ˈ;I)V

    invoke-virtual {p1, v3, v4}, Lʻʻ/ʽ;->ˈ(J)V

    :cond_3
    invoke-virtual {p1}, Lʻʻ/ʽ;->ˆʾ()V

    return-void
.end method
