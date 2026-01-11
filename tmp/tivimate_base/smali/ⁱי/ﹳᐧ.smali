.class public final synthetic Lⁱי/ﹳᐧ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᐧˎ/ˆʾ;


# instance fields
.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lⁱי/ﹳᐧ;->ʾˋ:I

    iput p2, p0, Lⁱי/ﹳᐧ;->ᴵˊ:I

    return-void
.end method


# virtual methods
.method public final ⁱˊ(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lⁱי/ﹳᐧ;->ᴵˊ:I

    check-cast p1, Lʽⁱ/ᵔי;

    iget v1, p0, Lⁱי/ﹳᐧ;->ʾˋ:I

    invoke-interface {p1, v1, v0}, Lʽⁱ/ᵔי;->ᵎˊ(II)V

    return-void
.end method
