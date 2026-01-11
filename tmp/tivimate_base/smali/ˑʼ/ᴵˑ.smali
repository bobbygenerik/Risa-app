.class public final Lˑʼ/ᴵˑ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˑʼ/ˈⁱ;


# instance fields
.field public final synthetic ʽ:Lˑʼ/ʿ;

.field public final ⁱˊ:I

.field public final ﹳٴ:I


# direct methods
.method public constructor <init>(Lˑʼ/ʿ;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˑʼ/ᴵˑ;->ʽ:Lˑʼ/ʿ;

    iput p2, p0, Lˑʼ/ᴵˑ;->ﹳٴ:I

    iput p3, p0, Lˑʼ/ᴵˑ;->ⁱˊ:I

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 5

    .prologue
    iget-object v0, p0, Lˑʼ/ᴵˑ;->ʽ:Lˑʼ/ʿ;

    iget-object v1, v0, Lˑʼ/ʿ;->ʾˋ:Lˑʼ/ᴵᵔ;

    iget v2, p0, Lˑʼ/ᴵˑ;->ﹳٴ:I

    if-eqz v1, :cond_0

    if-gez v2, :cond_0

    invoke-virtual {v1}, Lˑʼ/ᴵᵔ;->ˉـ()Lˑʼ/ʿ;

    move-result-object v1

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lˑʼ/ʿ;->ʿ(II)Z

    move-result v1

    if-eqz v1, :cond_0

    return v4

    :cond_0
    iget v1, p0, Lˑʼ/ᴵˑ;->ⁱˊ:I

    invoke-virtual {v0, p1, p2, v2, v1}, Lˑʼ/ʿ;->ʿᵢ(Ljava/util/ArrayList;Ljava/util/ArrayList;II)Z

    move-result p1

    return p1
.end method
