.class public final Lﹳﹶ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᐧᵢ/ﾞʻ;


# static fields
.field public static final ᴵˊ:Lˊᐧ/ʼˎ;


# instance fields
.field public final ʾˋ:Lʽᴵ/ﾞʻ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "EFBBBF"

    invoke-static {v0}, Lٴﾞ/ˆʾ;->ﹳᐧ(Ljava/lang/String;)Lˊᐧ/ʼˎ;

    move-result-object v0

    sput-object v0, Lﹳﹶ/ʽ;->ᴵˊ:Lˊᐧ/ʼˎ;

    return-void
.end method

.method public constructor <init>(Lʽᴵ/ﾞʻ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹳﹶ/ʽ;->ʾˋ:Lʽᴵ/ﾞʻ;

    return-void
.end method


# virtual methods
.method public final ˆʾ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    check-cast p1, Lˎᵢ/ᴵᵔ;

    invoke-virtual {p1}, Lˎᵢ/ᴵᵔ;->ˉˆ()Lˊᐧ/ᵔᵢ;

    move-result-object v0

    :try_start_0
    sget-object v1, Lﹳﹶ/ʽ;->ᴵˊ:Lˊᐧ/ʼˎ;

    invoke-interface {v0, v1}, Lˊᐧ/ᵔᵢ;->ˏי(Lˊᐧ/ʼˎ;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v1, Lˊᐧ/ʼˎ;->ʾˋ:[B

    array-length v1, v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lˊᐧ/ᵔᵢ;->skip(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    new-instance v1, Lʽᴵ/ʼᐧ;

    invoke-direct {v1, v0}, Lʽᴵ/ʼᐧ;-><init>(Lˊᐧ/ᵔᵢ;)V

    iget-object v0, p0, Lﹳﹶ/ʽ;->ʾˋ:Lʽᴵ/ﾞʻ;

    invoke-virtual {v0, v1}, Lʽᴵ/ﾞʻ;->ⁱˊ(Lʽᴵ/ˉˆ;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1}, Lʽᴵ/ʼᐧ;->ʿᵢ()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lˎᵢ/ᴵᵔ;->close()V

    return-object v0

    :cond_1
    :try_start_1
    new-instance v0, Lcom/squareup/moshi/JsonDataException;

    const-string v1, "JSON document was not fully consumed."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-virtual {p1}, Lˎᵢ/ᴵᵔ;->close()V

    throw v0
.end method
