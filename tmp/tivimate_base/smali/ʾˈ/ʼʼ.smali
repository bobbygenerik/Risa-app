.class public final synthetic Lʾˈ/ʼʼ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lﹶٴ/ˑﹳ;


# static fields
.field private static final descriptor:Lˉﾞ/ˈ;

.field public static final ﹳٴ:Lʾˈ/ʼʼ;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lʾˈ/ʼʼ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lʾˈ/ʼʼ;->ﹳٴ:Lʾˈ/ʼʼ;

    new-instance v1, Lﹶٴ/ˉʿ;

    const-string v2, "com.google.firebase.sessions.ProcessData"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v0, v3}, Lﹶٴ/ˉʿ;-><init>(Ljava/lang/String;Lﹶٴ/ˑﹳ;I)V

    const-string v0, "pid"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lﹶٴ/ˉʿ;->ٴﹶ(Ljava/lang/String;Z)V

    const-string v0, "uuid"

    invoke-virtual {v1, v0, v2}, Lﹶٴ/ˉʿ;->ٴﹶ(Ljava/lang/String;Z)V

    sput-object v1, Lʾˈ/ʼʼ;->descriptor:Lˉﾞ/ˈ;

    return-void
.end method


# virtual methods
.method public final ʽ(Lcom/parse/ʽˑ;)Ljava/lang/Object;
    .locals 9

    .prologue
    sget-object v0, Lʾˈ/ʼʼ;->descriptor:Lˉﾞ/ˈ;

    invoke-virtual {p1, v0}, Lcom/parse/ʽˑ;->ᵎﹶ(Lˉﾞ/ˈ;)Lcom/parse/ʽˑ;

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v1

    move v5, v2

    move v6, v5

    :goto_0
    if-eqz v4, :cond_3

    invoke-virtual {p1, v0}, Lcom/parse/ʽˑ;->ˉˆ(Lˉﾞ/ˈ;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    if-eqz v7, :cond_1

    if-ne v7, v1, :cond_0

    invoke-virtual {p1, v0, v1}, Lcom/parse/ʽˑ;->ʼʼ(Lˉﾞ/ˈ;I)Ljava/lang/String;

    move-result-object v3

    or-int/lit8 v5, v5, 0x2

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlinx/serialization/UnknownFieldException;

    invoke-direct {p1, v7}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    throw p1

    :cond_1
    invoke-virtual {p1, v0, v2}, Lcom/parse/ʽˑ;->ᵔﹳ(Lˉﾞ/ˈ;I)I

    move-result v6

    or-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    move v4, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v0}, Lcom/parse/ʽˑ;->ʾˋ(Lˉﾞ/ˈ;)V

    new-instance p1, Lʾˈ/ʾˋ;

    invoke-direct {p1, v5, v6, v3}, Lʾˈ/ʾˋ;-><init>(IILjava/lang/String;)V

    return-object p1
.end method

.method public final ˈ()Lˉﾞ/ˈ;
    .locals 1

    sget-object v0, Lʾˈ/ʼʼ;->descriptor:Lˉﾞ/ˈ;

    return-object v0
.end method

.method public final ⁱˊ()[Lיʼ/ﹳٴ;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lיʼ/ﹳٴ;

    sget-object v1, Lﹶٴ/ﾞᴵ;->ﹳٴ:Lﹶٴ/ﾞᴵ;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lﹶٴ/ʼᐧ;->ﹳٴ:Lﹶٴ/ʼᐧ;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public final ﹳٴ(Lʻʻ/ʽ;Ljava/lang/Object;)V
    .locals 3

    check-cast p2, Lʾˈ/ʾˋ;

    sget-object v0, Lʾˈ/ʼʼ;->descriptor:Lˉﾞ/ˈ;

    invoke-virtual {p1, v0}, Lʻʻ/ʽ;->ﹳٴ(Lˉﾞ/ˈ;)Lʻʻ/ʽ;

    move-result-object p1

    iget v1, p2, Lʾˈ/ʾˋ;->ﹳٴ:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lʻʻ/ʽ;->ⁱˊ(Lˉﾞ/ˈ;I)V

    invoke-virtual {p1, v1}, Lʻʻ/ʽ;->ʽ(I)V

    iget-object p2, p2, Lʾˈ/ʾˋ;->ⁱˊ:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lʻʻ/ʽ;->ⁱˊ(Lˉﾞ/ˈ;I)V

    invoke-virtual {p1, p2}, Lʻʻ/ʽ;->ʼˎ(Ljava/lang/String;)V

    invoke-virtual {p1}, Lʻʻ/ʽ;->ˆʾ()V

    return-void
.end method
