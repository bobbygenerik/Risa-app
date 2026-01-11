.class public final Lˈˎ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ˈ:Lˈˎ/ﹳٴ;


# instance fields
.field public final ʽ:Lˊⁱ/ˑﹳ;

.field public final ⁱˊ:Lᵔﹶ/ᴵˊ;

.field public final ﹳٴ:Lـˎ/ˈ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lˈˎ/ﹳٴ;

    invoke-direct {v0}, Lˈˎ/ﹳٴ;-><init>()V

    sput-object v0, Lˈˎ/ﹳٴ;->ˈ:Lˈˎ/ﹳٴ;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    new-instance v0, Lـˎ/ˈ;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lـˎ/ˈ;-><init>(I)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lˈˎ/ﹳٴ;->ﹳٴ:Lـˎ/ˈ;

    sget-object v0, Lⁱˋ/ﹳٴ;->ﹳٴ:Lᵔﹶ/ᴵˊ;

    iput-object v0, p0, Lˈˎ/ﹳٴ;->ⁱˊ:Lᵔﹶ/ᴵˊ;

    new-instance v0, Lˊⁱ/ˑﹳ;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Lˊⁱ/ˑﹳ;-><init>(I)V

    iput-object v0, p0, Lˈˎ/ﹳٴ;->ʽ:Lˊⁱ/ˑﹳ;

    return-void
.end method


# virtual methods
.method public final ⁱˊ(Lיʼ/ﹳٴ;Ljava/lang/Object;)Ljava/lang/String;
    .locals 5

    .prologue
    new-instance v0, Lʼٴ/ʾᵎ;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lʼٴ/ʾᵎ;-><init>(CI)V

    sget-object v1, Lᴵˉ/ⁱˊ;->ʽ:Lᴵˉ/ⁱˊ;

    monitor-enter v1

    :try_start_0
    iget-object v2, v1, Landroidx/datastore/preferences/protobuf/ˆʾ;->ⁱˊ:Ljava/lang/Object;

    check-cast v2, Lﹶˈ/ᵔᵢ;

    invoke-virtual {v2}, Lﹶˈ/ᵔᵢ;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    move-object v2, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lﹶˈ/ᵔᵢ;->removeLast()Ljava/lang/Object;

    move-result-object v2

    :goto_0
    check-cast v2, [C

    if-eqz v2, :cond_1

    iget v3, v1, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﹳٴ:I

    array-length v4, v2

    sub-int/2addr v3, v4

    iput v3, v1, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﹳٴ:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit v1

    if-nez v4, :cond_2

    const/16 v1, 0x80

    new-array v4, v1, [C

    :cond_2
    iput-object v4, v0, Lʼٴ/ʾᵎ;->ʽʽ:Ljava/lang/Object;

    :try_start_1
    new-instance v1, Lʻʻ/ʽ;

    sget-object v2, Lᴵˉ/ᵔᵢ;->ʽʽ:Lᴵˉ/ᵔᵢ;

    sget-object v3, Lᴵˉ/ᵔᵢ;->ˉٴ:Lᐧᵔ/ⁱˊ;

    invoke-virtual {v3}, Lﹶˈ/ﹳٴ;->ﹳٴ()I

    move-result v3

    new-array v3, v3, [Lʻʻ/ʽ;

    iget-object v4, p0, Lˈˎ/ﹳٴ;->ﹳٴ:Lـˎ/ˈ;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lar/tvplayer/core/domain/ʽﹳ;

    invoke-direct {v4, v0}, Lar/tvplayer/core/domain/ʽﹳ;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, v4, p0, v2, v3}, Lʻʻ/ʽ;-><init>(Lar/tvplayer/core/domain/ʽﹳ;Lˈˎ/ﹳٴ;Lᴵˉ/ᵔᵢ;[Lʻʻ/ʽ;)V

    invoke-virtual {v1, p1, p2}, Lʻʻ/ʽ;->ᵔᵢ(Lיʼ/ﹳٴ;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lʼٴ/ʾᵎ;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v0}, Lʼٴ/ʾᵎ;->ʼᐧ()V

    return-object p1

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, Lʼٴ/ʾᵎ;->ʼᐧ()V

    throw p1

    :goto_2
    monitor-exit v1

    throw p1
.end method

.method public final ﹳٴ(Lיʼ/ﹳٴ;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    .prologue
    iget-object v0, p0, Lˈˎ/ﹳٴ;->ﹳٴ:Lـˎ/ˈ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/parse/ʽˑ;

    invoke-direct {v0, p2}, Lcom/parse/ʽˑ;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/parse/ʽˑ;

    sget-object v2, Lᴵˉ/ᵔᵢ;->ʽʽ:Lᴵˉ/ᵔᵢ;

    invoke-interface {p1}, Lיʼ/ﹳٴ;->ˈ()Lˉﾞ/ˈ;

    move-result-object v3

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/parse/ʽˑ;-><init>(Lˈˎ/ﹳٴ;Lᴵˉ/ᵔᵢ;Lcom/parse/ʽˑ;Lˉﾞ/ˈ;)V

    invoke-virtual {v1, p1}, Lcom/parse/ʽˑ;->ـˆ(Lיʼ/ﹳٴ;)Ljava/lang/Object;

    move-result-object p1

    iget-object v1, v0, Lcom/parse/ʽˑ;->ˈٴ:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v2, v0, Lcom/parse/ʽˑ;->ᴵˊ:I

    :goto_0
    const/4 v3, -0x1

    const/16 v4, 0xa

    if-eq v2, v3, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x20

    if-eq v2, v5, :cond_1

    if-eq v2, v4, :cond_1

    const/16 v4, 0xd

    if-eq v2, v4, :cond_1

    const/16 v4, 0x9

    if-ne v2, v4, :cond_0

    goto :goto_1

    :cond_0
    iput v3, v0, Lcom/parse/ʽˑ;->ᴵˊ:I

    invoke-static {v2}, Lᴵˉ/ˑﹳ;->ⁱˊ(C)B

    move-result v4

    goto :goto_2

    :cond_1
    :goto_1
    move v2, v3

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, v0, Lcom/parse/ʽˑ;->ᴵˊ:I

    :goto_2
    const/16 v1, 0xa

    if-ne v4, v1, :cond_3

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Expected EOF after parsing, but had "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v0, Lcom/parse/ʽˑ;->ᴵˊ:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, " instead"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v1, 0x6

    invoke-static {v0, p1, p2, v1}, Lcom/parse/ʽˑ;->ʽʽ(Lcom/parse/ʽˑ;Ljava/lang/String;II)V

    const/4 p1, 0x0

    throw p1
.end method
