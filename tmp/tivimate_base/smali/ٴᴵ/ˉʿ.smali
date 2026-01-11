.class public abstract Lٴᴵ/ˉʿ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽʽ:J

.field public final ʾˋ:Lʽⁱ/ﹳᐧ;

.field public final ˈٴ:Ljava/util/List;

.field public final ᴵˊ:Lʼʻ/ᵎⁱ;

.field public final ᴵᵔ:Lٴᴵ/ˆʾ;


# direct methods
.method public constructor <init>(Lʽⁱ/ﹳᐧ;Ljava/util/List;Lٴᴵ/יـ;Ljava/util/List;)V
    .locals 7

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ˈ(Z)V

    iput-object p1, p0, Lٴᴵ/ˉʿ;->ʾˋ:Lʽⁱ/ﹳᐧ;

    invoke-static {p2}, Lʼʻ/ᵎⁱ;->ٴﹶ(Ljava/util/Collection;)Lʼʻ/ᵎⁱ;

    move-result-object p1

    iput-object p1, p0, Lٴᴵ/ˉʿ;->ᴵˊ:Lʼʻ/ᵎⁱ;

    if-nez p4, :cond_0

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-static {p4}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lٴᴵ/ˉʿ;->ˈٴ:Ljava/util/List;

    invoke-virtual {p3, p0}, Lٴᴵ/יـ;->ﹳٴ(Lٴᴵ/ˉʿ;)Lٴᴵ/ˆʾ;

    move-result-object p1

    iput-object p1, p0, Lٴᴵ/ˉʿ;->ᴵᵔ:Lٴᴵ/ˆʾ;

    iget-wide v0, p3, Lٴᴵ/יـ;->ʽ:J

    iget-wide v4, p3, Lٴᴵ/יـ;->ⁱˊ:J

    sget-object p1, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    sget-object v6, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v2, 0xf4240

    invoke-static/range {v0 .. v6}, Lᐧˎ/ʼʼ;->ᵎᵔ(JJJLjava/math/RoundingMode;)J

    move-result-wide p1

    iput-wide p1, p0, Lٴᴵ/ˉʿ;->ʽʽ:J

    return-void
.end method


# virtual methods
.method public abstract ˈ()Lـᵢ/ʼˎ;
.end method

.method public abstract ˑﹳ()Lٴᴵ/ˆʾ;
.end method

.method public abstract ⁱˊ()Ljava/lang/String;
.end method
