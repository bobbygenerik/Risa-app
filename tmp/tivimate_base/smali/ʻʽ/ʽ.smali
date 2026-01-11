.class public final Lʻʽ/ʽ;
.super Lcom/google/android/gms/internal/measurement/ᵎ;
.source "SourceFile"


# static fields
.field public static final ᵔי:Lﾞʼ/ﹳٴ;


# instance fields
.field public ʽʽ:I

.field public ˈٴ:I

.field public ˉٴ:I

.field public ˊʻ:[B

.field public ٴʼ:Ljava/util/HashMap;

.field public ٴᵢ:I

.field public ᴵᵔ:Ljava/util/EnumSet;

.field public ᵎˊ:[B

.field public ᵎⁱ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lʻʽ/ʽ;

    invoke-static {v0}, Lﾞʼ/ⁱˊ;->ˑﹳ(Ljava/lang/Class;)Lﾞʼ/ﹳٴ;

    move-result-object v0

    sput-object v0, Lʻʽ/ʽ;->ᵔי:Lﾞʼ/ﹳٴ;

    return-void
.end method


# virtual methods
.method public final ᵢˏ(Lˎʿ/ﹳٴ;)V
    .locals 9

    .prologue
    sget-object v0, Lᴵʿ/ⁱˊ;->ﹳٴ:Ljava/nio/charset/Charset;

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lˎʿ/ⁱˊ;->ﾞʻ(ILjava/nio/charset/Charset;)Ljava/lang/String;

    iget-object v0, p1, Lˎʿ/ⁱˊ;->ⁱˊ:Lˎʿ/ʽ;

    invoke-virtual {v0, p1}, Lˎʿ/ʽ;->ʽ(Lˎʿ/ⁱˊ;)J

    invoke-virtual {v0, p1}, Lˎʿ/ʽ;->ⁱˊ(Lˎʿ/ⁱˊ;)I

    move-result v2

    iput v2, p0, Lʻʽ/ʽ;->ʽʽ:I

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lˎʿ/ⁱˊ;->ˉˆ(I)V

    invoke-virtual {p1}, Lˎʿ/ⁱˊ;->ᵔʾ()I

    move-result v3

    iput v3, p0, Lʻʽ/ʽ;->ˈٴ:I

    invoke-virtual {v0, p1}, Lˎʿ/ʽ;->ʽ(Lˎʿ/ⁱˊ;)J

    move-result-wide v3

    const-class v5, Lʻʽ/ˑﹳ;

    invoke-static {v3, v4, v5}, Lᴵʿ/ﹳٴ;->ˈ(JLjava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v3

    iput-object v3, p0, Lʻʽ/ʽ;->ᴵᵔ:Ljava/util/EnumSet;

    new-array v3, v1, [B

    invoke-virtual {p1, v1, v3}, Lˎʿ/ⁱˊ;->ˆʾ(I[B)V

    iput-object v3, p0, Lʻʽ/ʽ;->ˊʻ:[B

    invoke-virtual {p1, v1}, Lˎʿ/ⁱˊ;->ˉˆ(I)V

    iget-object v3, p0, Lʻʽ/ʽ;->ᴵᵔ:Ljava/util/EnumSet;

    sget-object v4, Lʻʽ/ˑﹳ;->ˊʻ:Lʻʽ/ˑﹳ;

    invoke-virtual {v3, v4}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, p1}, Lˎʿ/ʽ;->ⁱˊ(Lˎʿ/ⁱˊ;)I

    move-result v3

    iput v3, p0, Lʻʽ/ʽ;->ٴᵢ:I

    invoke-virtual {p1, v2}, Lˎʿ/ⁱˊ;->ˉˆ(I)V

    invoke-virtual {p1}, Lˎʿ/ⁱˊ;->ᵔʾ()I

    move-result v3

    iput v3, p0, Lʻʽ/ʽ;->ˉٴ:I

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Lˎʿ/ⁱˊ;->ˉˆ(I)V

    :goto_0
    iget-object v3, p0, Lʻʽ/ʽ;->ᴵᵔ:Ljava/util/EnumSet;

    sget-object v4, Lʻʽ/ˑﹳ;->ᴵᵔ:Lʻʽ/ˑﹳ;

    invoke-virtual {v3, v4}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v3

    sget-object v4, Lʻʽ/ʽ;->ᵔי:Lﾞʼ/ﹳٴ;

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    new-instance v1, Lʻʽ/ʼˎ;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lʻʽ/ʼˎ;-><init>(I)V

    invoke-virtual {p1}, Lˎʿ/ⁱˊ;->ʼˎ()B

    move-result v3

    int-to-long v6, v3

    const-class v3, Lʻʽ/ᵎﹶ;

    invoke-static {v6, v7, v3, v5}, Lᴵʿ/ﹳٴ;->ﾞᴵ(JLjava/lang/Class;Lٴˎ/ﹳٴ;)Lᴵʿ/ʽ;

    move-result-object v3

    check-cast v3, Lʻʽ/ᵎﹶ;

    iput-object v3, v1, Lʻʽ/ʼˎ;->ʽ:Ljava/lang/Object;

    invoke-virtual {p1}, Lˎʿ/ⁱˊ;->ʼˎ()B

    move-result v3

    int-to-long v6, v3

    const-class v3, Lʻʽ/ᵔᵢ;

    invoke-static {v6, v7, v3, v5}, Lᴵʿ/ﹳٴ;->ﾞᴵ(JLjava/lang/Class;Lٴˎ/ﹳٴ;)Lᴵʿ/ʽ;

    move-result-object v3

    check-cast v3, Lʻʽ/ᵔᵢ;

    iput-object v3, v1, Lʻʽ/ʼˎ;->ˈ:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lˎʿ/ʽ;->ⁱˊ(Lˎʿ/ⁱˊ;)I

    move-result v3

    iput v3, v1, Lʻʽ/ʼˎ;->ⁱˊ:I

    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Lˎʿ/ⁱˊ;->ˉˆ(I)V

    invoke-virtual {p1}, Lˎʿ/ⁱˊ;->ʼˎ()B

    move-result v3

    int-to-long v6, v3

    const-class v3, Lʻʽ/ﾞᴵ;

    invoke-static {v6, v7, v3, v5}, Lᴵʿ/ﹳٴ;->ﾞᴵ(JLjava/lang/Class;Lٴˎ/ﹳٴ;)Lᴵʿ/ʽ;

    move-result-object v3

    check-cast v3, Lʻʽ/ﾞᴵ;

    iput-object v3, v1, Lʻʽ/ʼˎ;->ˑﹳ:Ljava/lang/Object;

    const-string v3, "Windows version = {}"

    invoke-interface {v4, v1, v3}, Lﾞʼ/ﹳٴ;->ᵔﹳ(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Lˎʿ/ⁱˊ;->ˉˆ(I)V

    :goto_1
    iget v1, p0, Lʻʽ/ʽ;->ʽʽ:I

    if-lez v1, :cond_2

    iget v3, p0, Lʻʽ/ʽ;->ˈٴ:I

    iput v3, p1, Lˎʿ/ⁱˊ;->ʽ:I

    sget-object v3, Lᴵʿ/ⁱˊ;->ʽ:Ljava/nio/charset/Charset;

    div-int/2addr v1, v2

    invoke-virtual {p1, v1, v3}, Lˎʿ/ⁱˊ;->ﾞʻ(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lʻʽ/ʽ;->ᵎⁱ:Ljava/lang/String;

    :cond_2
    iget-object v1, p0, Lʻʽ/ʽ;->ٴʼ:Ljava/util/HashMap;

    iget v3, p0, Lʻʽ/ʽ;->ٴᵢ:I

    if-lez v3, :cond_3

    iget v6, p0, Lʻʽ/ʽ;->ˉٴ:I

    iput v6, p1, Lˎʿ/ⁱˊ;->ʽ:I

    new-array v6, v3, [B

    invoke-virtual {p1, v3, v6}, Lˎʿ/ⁱˊ;->ˆʾ(I[B)V

    iput-object v6, p0, Lʻʽ/ʽ;->ᵎˊ:[B

    iget v3, p0, Lʻʽ/ʽ;->ˉٴ:I

    iput v3, p1, Lˎʿ/ⁱˊ;->ʽ:I

    :goto_2
    :pswitch_0
    invoke-virtual {v0, p1}, Lˎʿ/ʽ;->ⁱˊ(Lˎʿ/ⁱˊ;)I

    move-result v3

    int-to-long v6, v3

    const-class v8, Lʻʽ/ﹳٴ;

    invoke-static {v6, v7, v8, v5}, Lᴵʿ/ﹳٴ;->ﾞᴵ(JLjava/lang/Class;Lٴˎ/ﹳٴ;)Lᴵʿ/ʽ;

    move-result-object v6

    check-cast v6, Lʻʽ/ﹳٴ;

    const-string v7, "NTLM channel contains {}({}) TargetInfo"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v7, v6, v3}, Lﾞʼ/ﹳٴ;->ʻٴ(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Number;)V

    invoke-virtual {v0, p1}, Lˎʿ/ʽ;->ⁱˊ(Lˎʿ/ⁱˊ;)I

    move-result v3

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Encountered unhandled AvId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    invoke-static {p1}, Lﹳٴ/ﹳٴ;->ٴʼ(Lˎʿ/ⁱˊ;)Lﾞʾ/ⁱˊ;

    move-result-object v3

    invoke-virtual {v1, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :pswitch_2
    sget-object v3, Lˎʿ/ʽ;->ʽ:Lˎʿ/ʽ;

    invoke-virtual {v3, p1}, Lˎʿ/ʽ;->ʽ(Lˎʿ/ⁱˊ;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :pswitch_3
    sget-object v7, Lᴵʿ/ⁱˊ;->ʽ:Ljava/nio/charset/Charset;

    div-int/2addr v3, v2

    invoke-virtual {p1, v3, v7}, Lˎʿ/ⁱˊ;->ﾞʻ(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    :pswitch_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
