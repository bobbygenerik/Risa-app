.class public final synthetic Lᵔⁱ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ʽʽ:J

.field public final synthetic ʾˋ:Lᵔⁱ/ʽ;

.field public final synthetic ˈٴ:J

.field public final synthetic ᴵˊ:I


# direct methods
.method public synthetic constructor <init>(Lᵔⁱ/ʽ;IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᵔⁱ/ⁱˊ;->ʾˋ:Lᵔⁱ/ʽ;

    iput p2, p0, Lᵔⁱ/ⁱˊ;->ᴵˊ:I

    iput-wide p3, p0, Lᵔⁱ/ⁱˊ;->ʽʽ:J

    iput-wide p5, p0, Lᵔⁱ/ⁱˊ;->ˈٴ:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .prologue
    iget-object v0, p0, Lᵔⁱ/ⁱˊ;->ʾˋ:Lᵔⁱ/ʽ;

    iget-object v0, v0, Lᵔⁱ/ʽ;->ⁱˊ:Lʻʿ/ˆʾ;

    iget-object v1, v0, Lʻʿ/ˆʾ;->ˈٴ:Lﹳʽ/ᴵᵔ;

    iget-object v2, v1, Lﹳʽ/ᴵᵔ;->ᴵˊ:Ljava/lang/Object;

    check-cast v2, Lʼʻ/ᵎⁱ;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lﹳʽ/ᴵᵔ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Lʼʻ/ᵎⁱ;

    invoke-static {v1}, Lʼʻ/ﹳᐧ;->ˆʾ(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lﹳᵢ/ᵢˏ;

    :goto_0
    invoke-virtual {v0, v1}, Lʻʿ/ˆʾ;->ᵔٴ(Lﹳᵢ/ᵢˏ;)Lʻʿ/ﹳٴ;

    move-result-object v3

    new-instance v2, Lʻʿ/ʼˎ;

    iget v4, p0, Lᵔⁱ/ⁱˊ;->ᴵˊ:I

    iget-wide v5, p0, Lᵔⁱ/ⁱˊ;->ʽʽ:J

    iget-wide v7, p0, Lᵔⁱ/ⁱˊ;->ˈٴ:J

    invoke-direct/range {v2 .. v8}, Lʻʿ/ʼˎ;-><init>(Lʻʿ/ﹳٴ;IJJ)V

    const/16 v1, 0x3ee

    invoke-virtual {v0, v3, v1, v2}, Lʻʿ/ˆʾ;->ـˏ(Lʻʿ/ﹳٴ;ILᐧˎ/ˆʾ;)V

    return-void
.end method
