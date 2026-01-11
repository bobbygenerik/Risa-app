.class public final synthetic Lٴᐧ/ˑﹳ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʻˎ/ﹳٴ;
.implements Lᐧˎ/ˆʾ;


# instance fields
.field public final synthetic ʽʽ:Ljava/lang/Object;

.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILʽⁱ/ˆﾞ;Lʽⁱ/ˆﾞ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lٴᐧ/ˑﹳ;->ʾˋ:I

    iput-object p2, p0, Lٴᐧ/ˑﹳ;->ᴵˊ:Ljava/lang/Object;

    iput-object p3, p0, Lٴᐧ/ˑﹳ;->ʽʽ:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lʾٴ/ⁱˊ;Lˉˋ/ʼˎ;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lٴᐧ/ˑﹳ;->ᴵˊ:Ljava/lang/Object;

    iput-object p2, p0, Lٴᐧ/ˑﹳ;->ʽʽ:Ljava/lang/Object;

    iput p3, p0, Lٴᐧ/ˑﹳ;->ʾˋ:I

    return-void
.end method


# virtual methods
.method public ʽ()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lٴᐧ/ˑﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʾٴ/ⁱˊ;

    iget-object v1, p0, Lٴᐧ/ˑﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lˉˋ/ʼˎ;

    iget-object v0, v0, Lʾٴ/ⁱˊ;->ˈ:Ljava/lang/Object;

    check-cast v0, Lcom/parse/ٴʼ;

    iget v2, p0, Lٴᐧ/ˑﹳ;->ʾˋ:I

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/parse/ٴʼ;->ʻᵎ(Lˉˋ/ʼˎ;IZ)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public ⁱˊ(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lٴᐧ/ˑﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʽⁱ/ˆﾞ;

    iget-object v1, p0, Lٴᐧ/ˑﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lʽⁱ/ˆﾞ;

    check-cast p1, Lʽⁱ/ᵔי;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, p0, Lٴᐧ/ˑﹳ;->ʾˋ:I

    invoke-interface {p1, v2, v0, v1}, Lʽⁱ/ᵔי;->ˆﾞ(ILʽⁱ/ˆﾞ;Lʽⁱ/ˆﾞ;)V

    return-void
.end method
