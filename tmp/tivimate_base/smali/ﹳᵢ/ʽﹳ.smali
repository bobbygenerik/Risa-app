.class public final Lﹳᵢ/ʽﹳ;
.super Lʽⁱ/ʼˈ;
.source "SourceFile"


# instance fields
.field public final ⁱˊ:Lʽⁱ/ᴵˊ;


# direct methods
.method public constructor <init>(Lʽⁱ/ᴵˊ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹳᵢ/ʽﹳ;->ⁱˊ:Lʽⁱ/ᴵˊ;

    return-void
.end method


# virtual methods
.method public final ˉʿ(ILʽⁱ/ˊˋ;J)Lʽⁱ/ˊˋ;
    .locals 19

    sget-object v0, Lʽⁱ/ˊˋ;->ᵔﹳ:Ljava/lang/Object;

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lﹳᵢ/ʽﹳ;->ⁱˊ:Lʽⁱ/ᴵˊ;

    const/4 v2, 0x0

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p2

    invoke-virtual/range {v0 .. v18}, Lʽⁱ/ˊˋ;->ⁱˊ(Lʽⁱ/ᴵˊ;Ljava/lang/Object;JJJZZLʽⁱ/ʾᵎ;JJIJ)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lʽⁱ/ˊˋ;->ٴﹶ:Z

    return-object v0
.end method

.method public final ˉˆ()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final ᵔᵢ()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final ⁱˊ(Ljava/lang/Object;)I
    .locals 1

    .prologue
    sget-object v0, Lﹳᵢ/ˏי;->ˑﹳ:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final ﾞʻ(I)Ljava/lang/Object;
    .locals 0

    sget-object p1, Lﹳᵢ/ˏי;->ˑﹳ:Ljava/lang/Object;

    return-object p1
.end method

.method public final ﾞᴵ(ILʽⁱ/ˋᵔ;Z)Lʽⁱ/ˋᵔ;
    .locals 11

    .prologue
    const/4 p1, 0x0

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    if-eqz p3, :cond_1

    sget-object p1, Lﹳᵢ/ˏי;->ˑﹳ:Ljava/lang/Object;

    :cond_1
    move-object v3, p1

    sget-object v9, Lʽⁱ/ʽ;->ʽ:Lʽⁱ/ʽ;

    const/4 v10, 0x1

    const/4 v4, 0x0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v7, 0x0

    move-object v1, p2

    invoke-virtual/range {v1 .. v10}, Lʽⁱ/ˋᵔ;->ᵔᵢ(Ljava/lang/Object;Ljava/lang/Object;IJJLʽⁱ/ʽ;Z)V

    return-object v1
.end method
