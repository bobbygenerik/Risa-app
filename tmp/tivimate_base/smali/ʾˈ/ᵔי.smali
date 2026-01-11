.class public final synthetic Lʾˈ/ᵔי;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lﹶٴ/ˑﹳ;


# static fields
.field private static final descriptor:Lˉﾞ/ˈ;

.field public static final ﹳٴ:Lʾˈ/ᵔי;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lʾˈ/ᵔי;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lʾˈ/ᵔי;->ﹳٴ:Lʾˈ/ᵔי;

    new-instance v1, Lﹶٴ/ˉʿ;

    const-string v2, "com.google.firebase.sessions.SessionDetails"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v0, v3}, Lﹶٴ/ˉʿ;-><init>(Ljava/lang/String;Lﹶٴ/ˑﹳ;I)V

    const-string v0, "sessionId"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lﹶٴ/ˉʿ;->ٴﹶ(Ljava/lang/String;Z)V

    const-string v0, "firstSessionId"

    invoke-virtual {v1, v0, v2}, Lﹶٴ/ˉʿ;->ٴﹶ(Ljava/lang/String;Z)V

    const-string v0, "sessionIndex"

    invoke-virtual {v1, v0, v2}, Lﹶٴ/ˉʿ;->ٴﹶ(Ljava/lang/String;Z)V

    const-string v0, "sessionStartTimestampUs"

    invoke-virtual {v1, v0, v2}, Lﹶٴ/ˉʿ;->ٴﹶ(Ljava/lang/String;Z)V

    sput-object v1, Lʾˈ/ᵔי;->descriptor:Lˉﾞ/ˈ;

    return-void
.end method


# virtual methods
.method public final ʽ(Lcom/parse/ʽˑ;)Ljava/lang/Object;
    .locals 13

    .prologue
    sget-object v0, Lʾˈ/ᵔי;->descriptor:Lˉﾞ/ˈ;

    invoke-virtual {p1, v0}, Lcom/parse/ʽˑ;->ᵎﹶ(Lˉﾞ/ˈ;)Lcom/parse/ʽˑ;

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move v7, v2

    move v10, v7

    move-object v8, v3

    move-object v9, v8

    move-wide v11, v4

    move v3, v1

    :goto_0
    if-eqz v3, :cond_5

    invoke-virtual {p1, v0}, Lcom/parse/ʽˑ;->ˉˆ(Lˉﾞ/ˈ;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    if-eqz v4, :cond_3

    if-eq v4, v1, :cond_2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    invoke-virtual {p1, v0, v5}, Lcom/parse/ʽˑ;->יـ(Lˉﾞ/ˈ;I)J

    move-result-wide v11

    or-int/lit8 v7, v7, 0x8

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlinx/serialization/UnknownFieldException;

    invoke-direct {p1, v4}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    throw p1

    :cond_1
    invoke-virtual {p1, v0, v5}, Lcom/parse/ʽˑ;->ᵔﹳ(Lˉﾞ/ˈ;I)I

    move-result v10

    or-int/lit8 v7, v7, 0x4

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v0, v1}, Lcom/parse/ʽˑ;->ʼʼ(Lˉﾞ/ˈ;I)Ljava/lang/String;

    move-result-object v9

    or-int/lit8 v7, v7, 0x2

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v0, v2}, Lcom/parse/ʽˑ;->ʼʼ(Lˉﾞ/ˈ;I)Ljava/lang/String;

    move-result-object v8

    or-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    move v3, v2

    goto :goto_0

    :cond_5
    invoke-virtual {p1, v0}, Lcom/parse/ʽˑ;->ʾˋ(Lˉﾞ/ˈ;)V

    new-instance v6, Lʾˈ/ᵔٴ;

    invoke-direct/range {v6 .. v12}, Lʾˈ/ᵔٴ;-><init>(ILjava/lang/String;Ljava/lang/String;IJ)V

    return-object v6
.end method

.method public final ˈ()Lˉﾞ/ˈ;
    .locals 1

    sget-object v0, Lʾˈ/ᵔי;->descriptor:Lˉﾞ/ˈ;

    return-object v0
.end method

.method public final ⁱˊ()[Lיʼ/ﹳٴ;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lיʼ/ﹳٴ;

    sget-object v1, Lﹶٴ/ʼᐧ;->ﹳٴ:Lﹶٴ/ʼᐧ;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lﹶٴ/ﾞᴵ;->ﹳٴ:Lﹶٴ/ﾞᴵ;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lﹶٴ/ʼˎ;->ﹳٴ:Lﹶٴ/ʼˎ;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public final ﹳٴ(Lʻʻ/ʽ;Ljava/lang/Object;)V
    .locals 3

    check-cast p2, Lʾˈ/ᵔٴ;

    sget-object v0, Lʾˈ/ᵔי;->descriptor:Lˉﾞ/ˈ;

    invoke-virtual {p1, v0}, Lʻʻ/ʽ;->ﹳٴ(Lˉﾞ/ˈ;)Lʻʻ/ʽ;

    move-result-object p1

    iget-object v1, p2, Lʾˈ/ᵔٴ;->ﹳٴ:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lʻʻ/ʽ;->ⁱˊ(Lˉﾞ/ˈ;I)V

    invoke-virtual {p1, v1}, Lʻʻ/ʽ;->ʼˎ(Ljava/lang/String;)V

    iget-object v1, p2, Lʾˈ/ᵔٴ;->ⁱˊ:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Lʻʻ/ʽ;->ⁱˊ(Lˉﾞ/ˈ;I)V

    invoke-virtual {p1, v1}, Lʻʻ/ʽ;->ʼˎ(Ljava/lang/String;)V

    iget v1, p2, Lʾˈ/ᵔٴ;->ʽ:I

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v2}, Lʻʻ/ʽ;->ⁱˊ(Lˉﾞ/ˈ;I)V

    invoke-virtual {p1, v1}, Lʻʻ/ʽ;->ʽ(I)V

    iget-wide v1, p2, Lʾˈ/ᵔٴ;->ˈ:J

    const/4 p2, 0x3

    invoke-virtual {p1, v0, p2}, Lʻʻ/ʽ;->ⁱˊ(Lˉﾞ/ˈ;I)V

    invoke-virtual {p1, v1, v2}, Lʻʻ/ʽ;->ˈ(J)V

    invoke-virtual {p1}, Lʻʻ/ʽ;->ˆʾ()V

    return-void
.end method
