.class public final Lٴˑ/ˈ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final ʽʽ:Ljava/lang/String;

.field public final ʾˋ:I

.field public final ˈٴ:Ljava/lang/String;

.field public final ᴵˊ:I


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lٴˑ/ˈ;->ʾˋ:I

    iput p2, p0, Lٴˑ/ˈ;->ᴵˊ:I

    iput-object p3, p0, Lٴˑ/ˈ;->ʽʽ:Ljava/lang/String;

    iput-object p4, p0, Lٴˑ/ˈ;->ˈٴ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    .prologue
    check-cast p1, Lٴˑ/ˈ;

    iget v0, p0, Lٴˑ/ˈ;->ʾˋ:I

    iget v1, p1, Lٴˑ/ˈ;->ʾˋ:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lٴˑ/ˈ;->ᴵˊ:I

    iget p1, p1, Lٴˑ/ˈ;->ᴵˊ:I

    sub-int/2addr v0, p1

    :cond_0
    return v0
.end method
