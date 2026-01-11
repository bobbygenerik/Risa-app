.class public final Lʿˎ/ᵎﹶ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final ʾˋ:I

.field public final ᴵˊ:Lʿˎ/ʽ;


# direct methods
.method public constructor <init>(ILʿˎ/ʽ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lʿˎ/ᵎﹶ;->ʾˋ:I

    iput-object p2, p0, Lʿˎ/ᵎﹶ;->ᴵˊ:Lʿˎ/ʽ;

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lʿˎ/ᵎﹶ;

    iget v0, p0, Lʿˎ/ᵎﹶ;->ʾˋ:I

    iget p1, p1, Lʿˎ/ᵎﹶ;->ʾˋ:I

    invoke-static {v0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method
